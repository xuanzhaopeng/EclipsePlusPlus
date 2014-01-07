<%-- 
    Document   : index
    Created on : 6 janv. 2014, 21:47:41
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="assets/css/foundation.css" />
        <link rel="stylesheet" type="text/css" href="assets/style.css" />
        <script src="assets/js/modernizr.js"></script>
        <title>Eclipse++: Eclipse Distribution Customization </title>
    </head>
    <body>
        <div class="row">
            <div class="large-12 columns">
                <h1><h1>Welcome to Eclipse++: Eclipse Distribution Customization</h1></h1>
            </div>
        </div>

        <div class="row">
            <div class="large-12 columns">
                <div class="panel">
                    <h3>We&rsquo;re stoked you want to try Foundation! </h3>
                    <p>To get going, this file (index.html) includes some basic styles you can modify, play around with, or totally destroy to get going.</p>
                    <p>Once you've exhausted the fun in this document, you should check out:</p>
                    <div class="row">
                        <div class="large-4 medium-4 columns">
                            <p><a href="http://foundation.zurb.com/docs">Foundation Documentation</a><br />Everything you need to know about using the framework.</p>
                        </div>
                        <div class="large-4 medium-4 columns">
                            <p><a href="http://github.com/zurb/foundation">Foundation on Github</a><br />Latest code, issue reports, feature requests and more.</p>
                        </div>
                        <div class="large-4 medium-4 columns">
                            <p><a href="http://twitter.com/foundationzurb">@foundationzurb</a><br />Ping us on Twitter if you have questions. If you build something with this we'd love to see it (and send you a totally boss sticker).</p>
                        </div>        
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="large-12 columns">
                <ul class="tree">
                    <li><input type='checkbox'> Animals
                        <ul>
                            <li><input type='checkbox'> Birds</li>
                            <li><input type='checkbox'> Mammals
                                <ul>
                                    <li><input type='checkbox'> Elephant
                                        <ul>
                                            <li><input type='checkbox'> List item 1</li>
                                            <li><input type='checkbox'> List item 2</li>
                                            <li><input type='checkbox'> List item 3
                                                <ul>
                                                    <li><input type='checkbox'> List item 3.1</li>
                                                    <li><input type='checkbox'> List item 3.2</li>
                                                    <li><input type='checkbox'> List item 3.3
                                                        <ul>
                                                            <li><input type='checkbox'> List item 3.3.1</li>
                                                        </ul>
                                                    </li>
                                                    <li><input type='checkbox'> List item 3.4</li>
                                                </ul>
                                            </li>
                                            <li><input type='checkbox'> List item 4</li>
                                            <li><input type='checkbox'> List item 6
                                                <ul>
                                                    <li><input type='checkbox'> List item 6.1</li>
                                                    <li><input type='checkbox'> List item 6.2
                                                        <ul>
                                                            <li><input type='checkbox'> List item 6.2.1</li>
                                                            <li><input type='checkbox'> List item 6.2.2</li>
                                                        </ul>
                                                    </li>
                                                    <li><input type='checkbox'> List item 6.3</li>
                                                    <li><input type='checkbox'> List item 6.4</li>
                                                    <li><input type='checkbox'> List item 6.5
                                                        <ul>
                                                            <li><input type='checkbox'> List item 6.5.1</li>
                                                            <li><input type='checkbox'> List item 6.5.2
                                                                <ul>
                                                                    <li><input type='checkbox'> List item 6.5.2.1</li>
                                                                    <li><input type='checkbox'> List item 6.5.2.2</li>
                                                                </ul>
                                                            </li>
                                                            <li><input type='checkbox'> List item 6.5.3</li>
                                                            <li><input type='checkbox'> List item 6.5.4</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><input type='checkbox'> List item 7</li>
                                            <li><input type='checkbox'> List item 8</li>
                                            <li><input type='checkbox'> List item 9</li>
                                            <li><input type='checkbox'> List item 10</li>
                                        </ul>
                                    </li>
                                    <li><input type='checkbox'> Mouse</li>
                                </ul>
                            </li>
                            <li><input type='checkbox'> Reptiles</li>
                        </ul>
                    </li>
                    <li><input type='checkbox'> Plants
                        <ul>
                            <li><input type='checkbox'> Flowers
                                <ul>
                                    <li><input type='checkbox'> Rose</li>
                                    <li><input type='checkbox'> Tulip</li>
                                </ul>
                            </li>
                            <li><input type='checkbox'> Trees</li>
                        </ul>
                    </li>
                </ul>
                <input type="submit" value="Build">
            </div>
        </div>

    </body>
</html>
