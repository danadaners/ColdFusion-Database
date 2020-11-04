<cfparam name="book" default=""/>
<cfparam name="qterm" default=""/>


<cfset processForm()>
<cfoutput>
    <div class="row">
    <div class="col-lg-3">
    #sideNav()#
    </div>
    <div class="col-lg-9">
        <cfif book neq ''>
            #mainform()#
        </cfif>
    </div>
</div>
</cfoutput>


<cffunction name="sideNav">
 <input type="hidden" name="qterm" value="
#qterm#" />
    <cfoutput>
        <form action="#cgi.script_name#" method="post">
            <input type="text" class="form-control" id="qterm" name="qterm" value="#qterm#">
<button type="submit" class="btn btn-xs btn-primary">Search</button>

        </form>
    </cfoutput>

    <cfif qterm neq ''>
        <cfquery name="allbooks" datasource="szhan96000">
            select * from books where title like '%#qterm#%'
        </cfquery>
    </cfif>


    <div class="row">
        <div class="col-lg-12">
            Book List
        </div>
    <div class="col-lg-12">
    <ul class="nav nav-stacked">
        <li>
            <cfoutput>
                <a href="#cgi.script_name#?tool=addedit&book=new"> New Book</a>
            </cfoutput>
        </li>


    <cfoutput>
        <cfif isdefined("allbooks")>
            <cfloop query="allbooks">
                    <li><a href="#cgi.script_name#?tool=addedit&book=#isbn13#&qterm=#qterm#">#title#</a></li>
            </cfloop>
          <cfelse>
            No search term entered. Please try again.
        </cfif>

    </cfoutput>
    </ul>

    </div>
    </div>
</cffunction>


<cffunction name="MainForm">
    <cfoutput>

        <cfquery name="thisbook" datasource="szhan96000">
            select * from books where isbn13='#book#'
        </cfquery>

        <cfquery name="allPublishers" datasource="szhan96000">
            select * from publishers order by name
        </cfquery>

        <form action="#cgi.script_name#?tool=addedit" method="POST" enctype="multipart/form-data">
        Title: <input type="text" name="title" value="#thisbook.title[1]#" /> <br/>
        ISBN13: <input type="text" name="isbn13" value="#thisbook.isbn13[1]#"/> <br/>

        weight: <input type="text" name="weight" value="#thisbook.weight[1]#"/> <br/>
        Pages: <input type="text" name="pages" value="#thisbook.pages[1]#"/> <br/>
        Year: <input type="text" name="year" value="#thisbook.year[1]#"/> <br/>
        Binding: <input type="text" name="binding" value="#thisbook.binding[1]#"/> <br/>
        Description:
    <textarea name="description" id="description">#thisbook.description[1]#</textarea><br/>
        <script> CKEDITOR.replace("description"); </script>


            Publisher: <select name="publisher">
            <option value=""></option>
        <cfloop query="allpublishers">
            <cfset sel = ''>
            <cfif id eq thisbook.publisher[1]>
                <cfset sel = "selected">
            </cfif>
                <option value="#id#" #sel#>
                #name#
                </option>
        </cfloop>
        </select><br/>
            Cover Image: <input type="file" name="newimage"/><br/>
            <input type="hidden" name="image" value="#thisbook.image[1]#">
            <img src="../images/#thisbook.image[1]#" />
            <br/>


            <input type="submit"/>
        </form>
    </cfoutput>
</cffunction>


<cffunction name="processForm">
    <cfif form.keyExists("isbn13")>
        <cfif form.keyExists("newimage") and form.newimage neq ''>
            <cffile action="upload"
                    destination="#expandPath('../images/')#"
                    nameconflict="makeunique" />
            <cfset form.image=cffile.SERVERFILE>
        </cfif>




        <cfquery name="putin" datasource="szhan96000">
            if not exists(select * from books where isbn13='#form.isbn13#')
        insert into books (isbn13, title) values ('#form.isbn13#','#form.title#');
        update books set
        title='#form.title#',
        year='#form.year#',
        pages = '#form.pages#',
        weight='#form.weight#',
        binding='#form.binding#',
        description = '#form.description#',
        publisher = '#form.publisher#',
            image='#form.image#'
        where isbn13 = '#form.isbn13#'

        </cfquery>
    </cfif>

</cffunction>


