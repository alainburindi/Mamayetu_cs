
<?php

use App\User;
use App\Marks;
use App\Student;
use App\Professor;
use App\Courses;
$students = Student::where('t__class_id', $class[0]->id)->get();

$r = 0;
 ?>
<!DOCTYPE html>
<html>
  <head>
<!-- $students =  -->

    <meta charset="utf-8">
    <meta name="robots" content="noindex,nofollow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <script src="http://yetu.dev/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
    
    <!-- Styles -->
    <link href="http://yetu.dev/css/app.css" rel="stylesheet">
    <title>Whoops! There was an error.</title>

    <style>body {
  font: 12px "Helvetica Neue", helvetica, arial, sans-serif;
  color: #131313;
  background: #eeeeee;
  padding:0;
  margin: 0;
  max-height: 100%;

  text-rendering: optimizeLegibility;
}
  a {
    text-decoration: none;
  }

.panel {
    overflow-y: scroll;
    height: 100%;
    position: fixed;
    margin: 0;
    left: 0;
    top: 0;
}

.branding {
  position: absolute;
  top: 10px;
  right: 20px;
  color: #777777;
  font-size: 10px;
    z-index: 100;
}
  .branding a {
    color: #e95353;
  }

header {
  color: white;
  box-sizing: border-box;
  background-color: #2a2a2a;
  padding: 35px 40px;
  max-height: 180px;
  overflow: hidden;
  transition: 0.5s;
}

  header.header-expand {
    max-height: 1000px;
  }

  .exc-title {
  	margin-top: 20px; 
    margin: 0;
    color: #bebebe;
    font-size: 14px;
  }
    .exc-title-primary {
      color: #e95353;
    }

    .exc-message {
      font-size: 20px;
      word-wrap: break-word;
      margin: 4px 0 0 0;
      color: white;
    }
      .exc-message span {
        display: block;
      }
      .exc-message-empty-notice {
        color: #a29d9d;
        font-weight: 300;
      }

.details-container {
  left: 20%;
  width: 80%;
  background: #fafafa;
}
  .details {
    padding: 5px;
  }

    .details-heading {
      color: #4288CE;
      font-weight: 300;
      padding-bottom: 10px;
      margin-bottom: 10px;
      border-bottom: 1px solid rgba(0, 0, 0, .1);
    }

    .details pre.sf-dump {
      white-space: pre;
      word-wrap: inherit;
    }

    .details pre.sf-dump,
    .details pre.sf-dump .sf-dump-num,
    .details pre.sf-dump .sf-dump-const,
    .details pre.sf-dump .sf-dump-str,
    .details pre.sf-dump .sf-dump-note,
    .details pre.sf-dump .sf-dump-ref,
    .details pre.sf-dump .sf-dump-public,
    .details pre.sf-dump .sf-dump-protected,
    .details pre.sf-dump .sf-dump-private,
    .details pre.sf-dump .sf-dump-meta,
    .details pre.sf-dump .sf-dump-key,
    .details pre.sf-dump .sf-dump-index {
      color: #463C54;
    }

.left-panel {
  width: 30%;
  background: #ded8d8;
}

  .frames-description {
    background: rgba(0, 0, 0, .05);
    padding: 8px 15px;
    color: #a29d9d;
    font-size: 11px;
  }

  .frames-description.frames-description-application {
    text-align: center;
    font-size: 12px;
  }
  .frames-container.frames-container-application .frame:not(.frame-application) {
    display: none;
  }

  .frames-tab {
    color: #a29d9d;
    display: inline-block;
    padding: 4px 8px;
    margin: 0 2px;
    border-radius: 3px;
  }

  .frames-tab.frames-tab-active {
    background-color: #2a2a2a;
    color: #bebebe;
  }

  .frame {
    padding: 14px;
    cursor: pointer;
    transition: all 0.1s ease;
    background: #eeeeee;
  }
    .frame:not(:last-child) {
      border-bottom: 1px solid rgba(0, 0, 0, .05);
    }

    .frame.active {
      box-shadow: inset -5px 0 0 0 #4288CE;
      color: #4288CE;
    }

    .frame:not(.active):hover {
      background: #BEE9EA;
    }

    .frame-method-info {
      margin-bottom: 10px;
    }

    .frame-class, .frame-function, .frame-index {
      font-size: 14px;
    }

    .frame-index {
      float: left;
    }

    .frame-method-info {
      margin-left: 24px;
    }

    .frame-index {
      font-size: 11px;
      color: #a29d9d;
      background-color: rgba(0, 0, 0, .05);
      height: 18px;
      width: 18px;
      line-height: 18px;
      border-radius: 5px;
      padding: 0 1px 0 1px;
      text-align: center;
      display: inline-block;
    }

    .frame-application .frame-index {
      background-color: #2a2a2a;
      color: #bebebe;
    }

    .frame-file {
      font-family: "Inconsolata", "Fira Mono", "Source Code Pro", Monaco, Consolas, "Lucida Console", monospace;
      color: #a29d9d;
    }

      .frame-file .editor-link {
        color: #a29d9d;
      }

    .frame-line {
      font-weight: bold;
    }

    .frame-line:before {
      content: ":";
    }

    .frame-code {
      padding: 5px;
      background: #303030;
      display: none;
    }

    .frame-code.active {
      display: block;
    }

    .frame-code .frame-file {
      color: #a29d9d;
      padding: 12px 6px;

      border-bottom: none;
    }

    .code-block {
      padding: 10px;
      margin: 0;
      border-radius: 6px;
      box-shadow: 0 3px 0 rgba(0, 0, 0, .05),
                  0 10px 30px rgba(0, 0, 0, .05),
                  inset 0 0 1px 0 rgba(255, 255, 255, .07);
      -moz-tab-size: 4;
      -o-tab-size: 4;
      tab-size: 4;
    }

    .linenums {
      margin: 0;
      margin-left: 10px;
    }

    .frame-comments {
      border-top: none;
      margin-top: 15px;

      font-size: 12px;
    }

    .frame-comments.empty {
    }

    .frame-comments.empty:before {
      content: "No comments for this stack frame.";
      font-weight: 300;
      color: #a29d9d;
    }

    .frame-comment {
      padding: 10px;
      color: #e3e3e3;
      border-radius: 6px;
      background-color: rgba(255, 255, 255, .05);
    }
      .frame-comment a {
        font-weight: bold;
        text-decoration: none;
      }
        .frame-comment a:hover {
          color: #4bb1b1;
        }

    .frame-comment:not(:last-child) {
      border-bottom: 1px dotted rgba(0, 0, 0, .3);
    }

    .frame-comment-context {
      font-size: 10px;
      color: white;
    }

.delimiter {
  display: inline-block;
}

.data-table-container label {
  font-size: 16px;
  color: #303030;
  font-weight: bold;
  margin: 10px 0;

  display: block;

  margin-bottom: 5px;
  padding-bottom: 5px;
}
  .data-table {
    width: 100%;
    margin-bottom: 10px;
  }

  .data-table tbody {
    font: 13px "Inconsolata", "Fira Mono", "Source Code Pro", Monaco, Consolas, "Lucida Console", monospace;
  }

  .data-table thead {
    display: none;
  }

  .data-table tr {
    padding: 5px 0;
  }

  .data-table td:first-child {
    width: 20%;
    min-width: 130px;
    overflow: hidden;
    font-weight: bold;
    color: #463C54;
    padding-right: 5px;

  }

  .data-table td:last-child {
    width: 80%;
    -ms-word-break: break-all;
    word-break: break-all;
    word-break: break-word;
    -webkit-hyphens: auto;
    -moz-hyphens: auto;
    hyphens: auto;
  }

  .data-table span.empty {
    color: rgba(0, 0, 0, .3);
    font-weight: 300;
  }
  .data-table label.empty {
    display: inline;
  }

.handler {
  padding: 4px 0;
  font: 14px "Inconsolata", "Fira Mono", "Source Code Pro", Monaco, Consolas, "Lucida Console", monospace;
}

/* prettify code style
Uses the Doxy theme as a base */
pre .str, code .str { color: #BCD42A; }  /* string  */
pre .kwd, code .kwd { color: #4bb1b1;  font-weight: bold; }  /* keyword*/
pre .com, code .com { color: #888; font-weight: bold; } /* comment */
pre .typ, code .typ { color: #ef7c61; }  /* type  */
pre .lit, code .lit { color: #BCD42A; }  /* literal */
pre .pun, code .pun { color: #fff; font-weight: bold;  } /* punctuation  */
pre .pln, code .pln { color: #e9e4e5; }  /* plaintext  */
pre .tag, code .tag { color: #4bb1b1; }  /* html/xml tag  */
pre .htm, code .htm { color: #dda0dd; }  /* html tag */
pre .xsl, code .xsl { color: #d0a0d0; }  /* xslt tag */
pre .atn, code .atn { color: #ef7c61; font-weight: normal;} /* html/xml attribute name */
pre .atv, code .atv { color: #bcd42a; }  /* html/xml attribute value  */
pre .dec, code .dec { color: #606; }  /* decimal  */
pre.code-block, code.code-block, .frame-args.code-block, .frame-args.code-block samp {
  font-family: "Inconsolata", "Fira Mono", "Source Code Pro", Monaco, Consolas, "Lucida Console", monospace;
  background: #333;
  color: #e9e4e5;
}
  pre.code-block {
    white-space: pre-wrap;
  }

  pre.code-block a, code.code-block a {
    text-decoration:none;
  }

  .linenums li {
    color: #A5A5A5;
  }

  .linenums li.current{
    background: rgba(255, 100, 100, .07);
  }
    .linenums li.current.active {
      background: rgba(255, 100, 100, .17);
    }

pre:not(.prettyprinted) {
  padding-left: 60px;
}

#plain-exception {
  display: none;
}

#copy-button {
  cursor: pointer;
  border: 0;
}

.clipboard {
  opacity: .8;
  background: none;

  color: rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 0 0 2px rgba(255, 255, 255, 0.1);

  border-radius: 3px;

  outline: none !important;
}

  .clipboard:hover {
    box-shadow: inset 0 0 0 2px rgba(255, 255, 255, 0.3);
    color: rgba(255, 255, 255, 0.3);
  }

/* inspired by githubs kbd styles */
kbd {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #fcfcfc;
  border-color: #ccc #ccc #bbb;
  border-image: none;
  border-style: solid;
  border-width: 1px;
  color: #555;
  display: inline-block;
  font-size: 11px;
  line-height: 10px;
  padding: 3px 5px;
  vertical-align: middle;
}


/* == Media queries */

/* Expand the spacing in the details section */
@media (min-width: 1000px) {
  .details, .frame-code {
    padding: 20px 40px;
  }

  .details-container {
    left: 20%;
    width: 80%;
  }

  .frames-container {
    margin: 5px;
  }

  .left-panel {
    width: 20%;
  }
}

/* Stack panels */
@media (max-width: 600px) {
  .panel {
    position: static;
    width: 100%;
  }
  .left-panel {
    height: 82%;
  }
  /*.details-container {
    width: 100%;
  }*/
}

/* Stack details tables */
@media (max-width: 400px) {
  .data-table,
  .data-table tbody,
  .data-table tbody tr,
  .data-table tbody td {
    display: block;
    width: 100%;
    color: 
  }

    .data-table tbody tr:first-child {
      padding-top: 0;
    }

      .data-table tbody td:first-child,
      .data-table tbody td:last-child {
        padding-left: 0;
        padding-right: 0;
      }

      .data-table tbody td:last-child {
        padding-top: 3px;
      }
}
table{
	color: cyan;
}
.tooltipped {
  position: relative
}
.tooltipped:after {
  position: absolute;
  z-index: 1000000;
  display: none;
  padding: 5px 8px;
  color: #fff;
  text-align: center;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-wrap: break-word;
  white-space: pre;
  pointer-events: none;
  content: attr(aria-label);
  background: rgba(0, 0, 0, 0.8);
  border-radius: 3px;
  -webkit-font-smoothing: subpixel-antialiased
}
.tooltipped:before {
  position: absolute;
  z-index: 1000001;
  display: none;
  width: 0;
  height: 0;
  color: rgba(0, 0, 0, 0.8);
  pointer-events: none;
  content: "";
  border: 5px solid transparent
}
.tooltipped:hover:before,
.tooltipped:hover:after,
.tooltipped:active:before,
.tooltipped:active:after,
.tooltipped:focus:before,
.tooltipped:focus:after {
  display: inline-block;
  text-decoration: none
}
.tooltipped-s:after {
  top: 100%;
  right: 50%;
  margin-top: 5px
}
.tooltipped-s:before {
  top: auto;
  right: 50%;
  bottom: -5px;
  margin-right: -5px;
  border-bottom-color: rgba(0, 0, 0, 0.8)
}

pre.sf-dump {
  padding: 0px !important;
  margin: 0px !important;
}

.search-for-help {
  width: 85%;
  padding: 0;
  margin: 10px 0;
  list-style-type: none;
  display: inline-block;
}
  .search-for-help li {
    display: inline-block;
    margin-right: 5px;
  }
  .search-for-help li:last-child {
    margin-right: 0;
  }
    .search-for-help li a {

    }
      .search-for-help li a i {
        width: 16px;
        height: 16px;
        overflow: hidden;
        display: block;
      }
      .search-for-help li a svg {
        fill: #fff;
      }
      .search-for-help li a svg path {
        background-size: contain;
      }
</style>
  </head>
  <body>
  	
    <div class="Whoops container">
      <div class="stack-container">

        <div class="panel left-panel cf ">
  <header>
  <div class="exception">
  	<div class="exc-title">
		<img src="http://yetu.dev/storage/icons/icon.png" style="padding-top: -20px">
        <span class="exc-title-primary"><br>{{$class[0]->name.' '.$class[0]->option}}</span>
 	</div>

  <div class="exc-message">
          <span class="exc-message-empty-notice">Titulaire : {{Professor::where('id', $class[0]->titulaire)->get()[0]->name}}</span>
    
    <ul class="search-for-help">
            <li>
        <a rel="noopener noreferrer" target="_blank" href="https://google.com/search?q=Symfony%5CComponent%5CHttpKernel%5CException%5CMethodNotAllowedHttpException+" title="Search for help on Google.">
          <!-- Google icon by Alfredo H, from https://www.iconfinder.com/alfredoh -->
          <!-- Creative Commons (Attribution 3.0 Unported) -->
          <!-- http://creativecommons.org/licenses/by/3.0/ -->
          <svg class="google" height="16" viewBox="0 0 512 512" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M457.732 216.625c2.628 14.04 4.063 28.743 4.063 44.098C461.795 380.688 381.48 466 260.205 466c-116.024 0-210-93.977-210-210s93.976-210 210-210c56.703 0 104.076 20.867 140.44 54.73l-59.205 59.197v-.135c-22.046-21.002-50-31.762-81.236-31.762-69.297 0-125.604 58.537-125.604 127.84 0 69.29 56.306 127.97 125.604 127.97 62.87 0 105.653-35.966 114.46-85.313h-114.46v-81.902h197.528z"/>
          </svg>
        </a>
      </li>
      <li>
        <a rel="noopener noreferrer" target="_blank" href="https://duckduckgo.com/?q=Symfony%5CComponent%5CHttpKernel%5CException%5CMethodNotAllowedHttpException+" title="Search for help on DuckDuckGo.">
          <!-- DuckDuckGo icon by IconBaandar Team, from https://www.iconfinder.com/iconbaandar -->
          <!-- Creative Commons (Attribution 3.0 Unported) -->
          <!-- http://creativecommons.org/licenses/by/3.0/ -->
          <svg class="duckduckgo" height="16" viewBox="150 150 1675 1675" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M1792 1024c0 204.364-80.472 398.56-224.955 543.04-144.483 144.48-338.68 224.95-543.044 224.95-204.36 0-398.56-80.47-543.04-224.95-144.48-144.482-224.95-338.676-224.95-543.04 0-204.365 80.47-398.562 224.96-543.045C625.44 336.47 819.64 256 1024 256c204.367 0 398.565 80.47 543.05 224.954C1711.532 625.437 1792 819.634 1792 1024zm-270.206 497.787C1654.256 1389.327 1728 1211.36 1728 1024c0-187.363-73.74-365.332-206.203-497.796C1389.332 393.74 1211.363 320 1024 320s-365.33 73.742-497.795 206.205C393.742 658.67 320 836.637 320 1024c0 187.36 73.744 365.326 206.206 497.787C658.67 1654.25 836.638 1727.99 1024 1727.99c187.362 0 365.33-73.74 497.794-206.203z"/>
            <path d="M1438.64 1177.41c0-.03-.005-.017-.01.004l.01-.004z"/>
            <path d="M1499.8 976.878c.03-.156-.024-.048-.11.107l.11-.107z"/>
            <path d="M1105.19 991.642zm-68.013-376.128c-8.087-10.14-18.028-19.965-29.89-29.408-13.29-10.582-29-20.76-47.223-30.443-35.07-18.624-74.482-31.61-115.265-38.046-39.78-6.28-80.84-6.256-120.39.917l1.37 31.562c1.8.164 7.7 3.9 14.36 8.32-20.68 5.94-39.77 14.447-39.48 39.683l.2 17.48 17.3-1.73c29.38-2.95 60.17-2.06 90.32 2.61 9.21 1.42 18.36 3.2 27.38 5.32l-4.33 1.15c-20.45 5.58-38.93 12.52-54.25 20.61-46.28 24.32-75.51 60.85-90.14 108.37-14.14 45.95-14.27 101.81-2.72 166.51l.06.06c15.14 84.57 64.16 316.39 104.11 505.39 19.78 93.59 37.38 176.83 47.14 224.4 3.26 15.84 5.03 31.02 5.52 45.52.3 9.08.09 17.96-.58 26.62-.45 5.8-1.11 11.51-1.96 17.112l31.62 4.75c.71-4.705 1.3-9.494 1.76-14.373 48.964 10.517 99.78 16.05 151.88 16.05 60.68 0 119.61-7.505 175.91-21.64 3.04 6.08 6.08 12.19 9.11 18.32l28.62-14.128c-2.11-4.27-4.235-8.55-6.37-12.84-23.005-46.124-47.498-93.01-68.67-133.534-15.39-29.466-29.01-55.53-39.046-75.58-26.826-53.618-53.637-119.47-68.28-182.368-8.78-37.705-13.128-74.098-10.308-105.627-15.31-6.28-26.69-11.8-31.968-15.59l-.01.015c-14.22-10.2-31.11-28.12-41.82-49.717-8.618-17.376-13.4-37.246-10.147-57.84 3.17-19.84 27.334-46.714 57.843-67.46v-.063c26.554-18.05 58.75-32.506 86.32-34.31 7.835-.51 16.31-1.008 23.99-1.45 33.45-1.95 50.243-2.93 84.475-11.42 10.88-2.697 26.19-6.56 43.53-11.09 2.364-40.7-5.947-87.596-21.04-133.234-22.004-66.53-58.68-131.25-97.627-170.21-12.543-12.55-28.17-22.79-45.9-30.933-16.88-7.753-35.64-13.615-55.436-17.782zm-10.658 178.553s6.77-42.485 58.39-33.977c27.96 4.654 37.89 29.833 37.89 29.833s-25.31-14.46-44.95-14.198c-40.33.53-51.35 18.342-51.35 18.342zm-240.45-18.802c48.49-19.853 72.11 11.298 72.11 11.298s-35.21-15.928-69.46 5.59c-34.19 21.477-32.92 43.452-32.92 43.452s-18.17-40.5 30.26-60.34zm296.5 95.4c0-6.677 2.68-12.694 7.01-17.02 4.37-4.37 10.42-7.074 17.1-7.074 6.73 0 12.79 2.7 17.15 7.05 4.33 4.33 7.01 10.36 7.01 17.05 0 6.74-2.7 12.81-7.07 17.18-4.33 4.33-10.37 7.01-17.1 7.01-6.68 0-12.72-2.69-17.05-7.03-4.36-4.37-7.07-10.43-7.07-17.16zm-268.42 51.27c0-8.535 3.41-16.22 8.93-21.738 5.55-5.55 13.25-8.982 21.81-8.982 8.51 0 16.18 3.415 21.7 8.934 5.55 5.55 8.98 13.25 8.98 21.78 0 8.53-3.44 16.23-8.98 21.79-5.52 5.52-13.19 8.93-21.71 8.93-8.55 0-16.26-3.43-21.82-8.99-5.52-5.52-8.93-13.2-8.93-21.74z"/>
            <path d="M1102.48 986.34zm390.074-64.347c-28.917-11.34-74.89-12.68-93.32-3.778-11.5 5.567-35.743 13.483-63.565 21.707-25.75 7.606-53.9 15.296-78.15 21.702-17.69 4.67-33.3 8.66-44.4 11.435-34.92 8.76-52.05 9.77-86.17 11.78-7.84.46-16.48.97-24.48 1.5-28.12 1.86-60.97 16.77-88.05 35.4v.06c-31.12 21.4-55.77 49.12-59.01 69.59-3.32 21.24 1.56 41.74 10.35 59.67 10.92 22.28 28.15 40.77 42.66 51.29l.01-.02c5.38 3.9 16.98 9.6 32.6 16.08 26.03 10.79 63.2 23.76 101.25 34.23 43.6 11.99 89.11 21.05 121.69 20.41 34.26-.69 77.73-10.52 114.54-24.67 22.15-8.52 42.21-18.71 56.88-29.58 17.85-13.22 28.7-28.42 28.4-44.74-.07-3.89-.72-7.63-1.97-11.21l-.02.01c-11.6-33.06-50.37-23.59-105.53-10.12-46.86 11.445-107.94 26.365-169.01 20.434-32.56-3.167-54.45-10.61-67.88-20.133-5.96-4.224-9.93-8.67-12.18-13.11-1.96-3.865-2.68-7.84-2.33-11.714.39-4.42 2.17-9.048 5.1-13.57l-.05-.03c7.86-12.118 23.082-9.72 43.93-6.43 25.91 4.08 58.2 9.172 99.013-3.61 39.63-12.378 87.76-29.9 131.184-47.39 42.405-17.08 80.08-34.078 100.74-46.18 25.46-14.87 37.57-29.428 40.59-42.866 2.725-12.152-.89-22.48-8.903-31.07-5.87-6.29-14.254-11.31-23.956-15.115z"/>
          </svg>
        </a>
      </li>
      <li>
        <a rel="noopener noreferrer" target="_blank" href="https://stackoverflow.com/search?q=Symfony%5CComponent%5CHttpKernel%5CException%5CMethodNotAllowedHttpException+" title="Search for help on Stack Overflow.">
          <!-- Stack Overflow icon by Picons.me, from https://www.iconfinder.com/Picons -->
          <!-- Free for commercial use -->
          <svg class="stackoverflow" height="16" viewBox="-1163 1657.697 56.693 56.693" width="16" xmlns="http://www.w3.org/2000/svg">
            <path d="M-1126.04 1689.533l-16.577-9.778 2.088-3.54 16.578 9.778zM-1127.386 1694.635l-18.586-4.996 1.068-3.97 18.586 4.995zM-1127.824 1700.137l-19.165-1.767.378-4.093 19.165 1.767zM-1147.263 1701.293h19.247v4.11h-19.247z"/>
            <path d="M-1121.458 1710.947s0 .96-.032.96v.016h-30.796s-.96 0-.96-.016h-.032v-20.03h3.288v16.805h25.244v-16.804h3.288v19.07zM-1130.667 1667.04l10.844 15.903-3.396 2.316-10.843-15.903zM-1118.313 1663.044l3.29 18.963-4.05.703-3.29-18.963z"/>
          </svg>
        </a>
      </li>
    </ul>

    <span id="plain-exception">Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException thrown with message &quot;&quot;

</span>
    <button id="copy-button" class="clipboard" data-clipboard-text="Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException thrown with message &quot;&quot;

" title="Copy exception details to clipboard">
      COPY
    </button>
  </div>
</div>
</header>
<div class="frames-description frames-description-application">
        <a href="#" id="all-frames-tab" class="frames-tab frames-tab-active">
      Nombre d'eleves ({{count($students)}})
    </a>
  </div>
<div class="frames-container ">
	@foreach($students as $s)
	<?php $r++?>
	<!-- frame -->
  <div class="frame  {{($r == 1) ? "active" : ""}} " id="frame-line-{{$s->id-1}}">
  	<!-- frame number -->
      <span class="frame-index">26</span>
      <!-- container -->
      <div class="frame-method-info">
      	<!-- title -->
        <span class="frame-class">{{$s->matricule}}
        </span>
        <!-- after snumber in blue -->
        <span class="frame-function"><div class="delimiter">{{User::find($s->user_id)->name}}</div></span>
      </div>
<!-- details -->
    <div class="frame-file">
        <div class="delimiter">&hellip;
        	user id :: {{$s->user_id}}
        </div><!--
   --><span class="frame-line">255</span>
    </div>
  </div>
	@endforeach
	<?php $r=0?>
</div>

<!-- frames details -->
</div>
        <div class="panel details-container cf">
  <div class="frame-code-container ">
  	<!-- // $marks = Marks::where('student_id', $s->id)->get()  -->
    @foreach($students as $s)
    <?php $r++?>
    <?php
    $marks = DB::select('select marks.id as id, name, maxima, periode_1, periode_2, exam_1, periode_3, periode_4, exam_2 from courses inner join marks on courses.id = marks.courses_id and marks.student_id = '.$s->id.' order by maxima asc');
    
     ?>
    <?php $user = User::where('id', $s->user_id)->get()[0] ?>
        <div class="frame-code {{($r == 1) ? "active" : ""}}" id="frame-code-{{$s->id-1}}">
	        <div class="frame-file ">

	        	@include('pages.marks.bull', ['courses'=> $marks])
	        	<strong><div class="delimiter">C:\xampp\htdocs\projects\mamayetu_cs\vendor\laravel\framework\src\Illuminate\Routing\RouteCollection.php</div></strong>
	        </div>
	        <pre id="frame-code-linenums-0" class="code-block linenums:236"> 
	        <strong>some details
	        	{{$user->name}}
	        </strong>       </pre>
	        <!-- another subframe -->
	        <div id="frame-code-args-0" class="code-block frame-args">
	          	jhfdefh
	        </div>
	        <div class="frame-comments empty"></div>
	        <div class="details" style="background: white">
  <h2 class="details-heading">Add &amp; change marks:</h2>
		@include('inc.messages')
  <div class="data-table-container" id="data-tables">
  	{!! Form::open(['action' => 'MarksController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'class' => 'form-inline'] ) !!}
        @csrf
        <div class="form-group">
        	{{Form::label('section', 'Periode', ['class' => 'label'])}}
            {{Form::select('periode',[
            'Semestre 1' => [
			    'periode_1' => 'periode 1', 'periode_2' => 'periode 2',
			    'exam_1' => 'exam'
			],
			'Semestre 2' => [ 
			'periode_3' => 'periode 3', 'periode_4' => 'periode 4','exam_2' => 'exam'] 
			],'', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
            {{Form::label('max', 'cours')}}
            <select name="cours_id" required class="form-control">
                <option for="" disabled="" selected="">Choisissez le cours</option>
                @foreach($marks as $m)
                <option value="ggggf{{$m->id}}hhhhh">{{$m->name}}</option>
                @endforeach
            </select>

        <div class="form-group">
        	{{Form::label('section', 'Points', ['class' => 'label'])}}
            {{Form::number('marks','00', ['class' => 'form-control'])}}
        </div>
		{{Form::submit('OK',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}

        </div>
    <div class="col-lg-12">
        {!! Form::open(['action' => 'MarksController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'class' => 'form-inline'] ) !!}
        @csrf
        <div class="form-group">
        	{{Form::label('section', 'Periode', ['class' => 'label'])}}
            {{Form::select('periode',[
            'Semestre 1' => [
			    'periode_1' => 'periode 1', 'periode_2' => 'periode 2',
			    'exam_1' => 'exam'
			],
			'Semestre 2' => [ 
			'periode_3' => 'periode 3', 'periode_4' => 'periode 4','exam_2' => 'exam'] 
			],'', ['class' => 'form-control'])}}
        </div>
        {{Form::submit('OK',['class' => 'btn btn-primary'])}}
      {!! Form::close() !!}
      

        {!! Form::open(['action' => 'MarksController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'class' => ''] ) !!}
        @csrf
        <div class="form-group">
            {{Form::label('max', 'cours')}}
            @foreach($marks as $m)
                <label value="ggggf{{$m->id}}hhhhh">{{$m->name}}</label>
                {{Form::number('marks',$m->periode_1, ['class' => 'form-control'])}}
            @endforeach
		{{Form::submit('OK',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}
    </div>
    <div class="data-table-container" id="handlers">
    	<div class="mx-auto"><p></p>
    		{{$class->links()}}
    	</div>
    	
    <label>Registered Handlers</label>
          <div class="handler active">
        0. Whoops\Handler\PrettyPageHandler      </div>
      </div>

</div>
</div>
    	</div>

	@endforeach
            
  </div>

      </div>
    </div>

    <script>var r=null;window.PR_SHOULD_USE_CONTINUATION=!0;
    // delted
	</script>
    <script>/* Zepto v1.1.3 - zepto event ajax form ie - zeptojs.com/license */
var Zepto=function(){function L(t){return null==t?String(t):j[T.call(t)]||"object"}function Z(t){return"function"==L(t)}function $(t){return null!=t&&t==t.window}function _(t){return null!=t&&t.nodeType==t.DOCUMENT_NODE}function D(t){return"object"==L(t)}function R(t){return D(t)&&!$(t)&&Object.getPrototypeOf(t)==Object.prototype}function M(t){return"number"==typeof t.length}function k(t){return s.call(t,function(t){return null!=t})}function z(t){return t.length>0?n.fn.concat.apply([],t):t}function F(t){return t.replace(/::/g,"/").replace(/([A-Z]+)([A-Z][a-z])/g,"$1_$2").replace(/([a-z\d])([A-Z])/g,"$1_$2").replace(/_/g,"-").toLowerCase()}function q(t){return t in f?f[t]:f[t]=new RegExp("(^|\\s)"+t+"(\\s|$)")}function H(t,e){return"number"!=typeof e||c[F(t)]?e:e+"px"}function I(t){var e,n;return u[t]||(e=a.createElement(t),a.body.appendChild(e),n=getComputedStyle(e,"").getPropertyValue("display"),e.parentNode.removeChild(e),"none"==n&&(n="block"),u[t]=n),u[t]}function V(t){return"children"in t?o.call(t.children):n.map(t.childNodes,function(t){return 1==t.nodeType?t:void 0})}function U(n,i,r){for(e in i)r&&(R(i[e])||A(i[e]))?(R(i[e])&&!R(n[e])&&(n[e]={}),A(i[e])&&!A(n[e])&&(n[e]=[]),U(n[e],i[e],r)):i[e]!==t&&(n[e]=i[e])}function B(t,e){return null==e?n(t):n(t).filter(e)}function J(t,e,n,i){return Z(e)?e.call(t,n,i):e}function X(t,e,n){null==n?t.removeAttribute(e):t.setAttribute(e,n)}function W(e,n){var i=e.className,r=i&&i.baseVal!==t;return n===t?r?i.baseVal:i:void(r?i.baseVal=n:e.className=n)}function Y(t){var e;try{return t?"true"==t||("false"==t?!1:"null"==t?null:/^0/.test(t)||isNaN(e=Number(t))?/^[\[\{]/.test(t)?n.parseJSON(t):t:e):t}catch(i){return t}}function G(t,e){e(t);for(var n in t.childNodes)G(t.childNodes[n],e)}var t,e,n,i,C,N,r=[],o=r.slice,s=r.filter,a=window.document,u={},f={},c={"column-count":1,columns:1,"font-weight":1,"line-height":1,opacity:1,"z-index":1,zoom:1},l=/^\s*<(\w+|!)[^>]*>/,h=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,p=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,d=/^(?:body|html)$/i,m=/([A-Z])/g,g=["val","css","html","text","data","width","height","offset"],v=["after","prepend","before","append"],y=a.createElement("table"),x=a.createElement("tr"),b={tr:a.createElement("tbody"),tbody:y,thead:y,tfoot:y,td:x,th:x,"*":a.createElement("div")},w=/complete|loaded|interactive/,E=/^[\w-]*$/,j={},T=j.toString,S={},O=a.createElement("div"),P={tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"},A=Array.isArray||function(t){return t instanceof Array};return S.matches=function(t,e){if(!e||!t||1!==t.nodeType)return!1;var n=t.webkitMatchesSelector||t.mozMatchesSelector||t.oMatchesSelector||t.matchesSelector;if(n)return n.call(t,e);var i,r=t.parentNode,o=!r;return o&&(r=O).appendChild(t),i=~S.qsa(r,e).indexOf(t),o&&O.removeChild(t),i},C=function(t){return t.replace(/-+(.)?/g,function(t,e){return e?e.toUpperCase():""})},N=function(t){return s.call(t,function(e,n){return t.indexOf(e)==n})},S.fragment=function(e,i,r){var s,u,f;return h.test(e)&&(s=n(a.createElement(RegExp.$1))),s||(e.replace&&(e=e.replace(p,"<$1></$2>")),i===t&&(i=l.test(e)&&RegExp.$1),i in b||(i="*"),f=b[i],f.innerHTML=""+e,s=n.each(o.call(f.childNodes),function(){f.removeChild(this)})),R(r)&&(u=n(s),n.each(r,function(t,e){g.indexOf(t)>-1?u[t](e):u.attr(t,e)})),s},S.Z=function(t,e){return t=t||[],t.__proto__=n.fn,t.selector=e||"",t},S.isZ=function(t){return t instanceof S.Z},S.init=function(e,i){var r;if(!e)return S.Z();if("string"==typeof e)if(e=e.trim(),"<"==e[0]&&l.test(e))r=S.fragment(e,RegExp.$1,i),e=null;else{if(i!==t)return n(i).find(e);r=S.qsa(a,e)}else{if(Z(e))return n(a).ready(e);if(S.isZ(e))return e;if(A(e))r=k(e);else if(D(e))r=[e],e=null;else if(l.test(e))r=S.fragment(e.trim(),RegExp.$1,i),e=null;else{if(i!==t)return n(i).find(e);r=S.qsa(a,e)}}return S.Z(r,e)},n=function(t,e){return S.init(t,e)},n.extend=function(t){var e,n=o.call(arguments,1);return"boolean"==typeof t&&(e=t,t=n.shift()),n.forEach(function(n){U(t,n,e)}),t},S.qsa=function(t,e){var n,i="#"==e[0],r=!i&&"."==e[0],s=i||r?e.slice(1):e,a=E.test(s);return _(t)&&a&&i?(n=t.getElementById(s))?[n]:[]:1!==t.nodeType&&9!==t.nodeType?[]:o.call(a&&!i?r?t.getElementsByClassName(s):t.getElementsByTagName(e):t.querySelectorAll(e))},n.contains=function(t,e){return t!==e&&t.contains(e)},n.type=L,n.isFunction=Z,n.isWindow=$,n.isArray=A,n.isPlainObject=R,n.isEmptyObject=function(t){var e;for(e in t)return!1;return!0},n.inArray=function(t,e,n){return r.indexOf.call(e,t,n)},n.camelCase=C,n.trim=function(t){return null==t?"":String.prototype.trim.call(t)},n.uuid=0,n.support={},n.expr={},n.map=function(t,e){var n,r,o,i=[];if(M(t))for(r=0;r<t.length;r++)n=e(t[r],r),null!=n&&i.push(n);else for(o in t)n=e(t[o],o),null!=n&&i.push(n);return z(i)},n.each=function(t,e){var n,i;if(M(t)){for(n=0;n<t.length;n++)if(e.call(t[n],n,t[n])===!1)return t}else for(i in t)if(e.call(t[i],i,t[i])===!1)return t;return t},n.grep=function(t,e){return s.call(t,e)},window.JSON&&(n.parseJSON=JSON.parse),n.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(t,e){j["[object "+e+"]"]=e.toLowerCase()}),n.fn={forEach:r.forEach,reduce:r.reduce,push:r.push,sort:r.sort,indexOf:r.indexOf,concat:r.concat,map:function(t){return n(n.map(this,function(e,n){return t.call(e,n,e)}))},slice:function(){return n(o.apply(this,arguments))},ready:function(t){return w.test(a.readyState)&&a.body?t(n):a.addEventListener("DOMContentLoaded",function(){t(n)},!1),this},get:function(e){return e===t?o.call(this):this[e>=0?e:e+this.length]},toArray:function(){return this.get()},size:function(){return this.length},remove:function(){return this.each(function(){null!=this.parentNode&&this.parentNode.removeChild(this)})},each:function(t){return r.every.call(this,function(e,n){return t.call(e,n,e)!==!1}),this},filter:function(t){return Z(t)?this.not(this.not(t)):n(s.call(this,function(e){return S.matches(e,t)}))},add:function(t,e){return n(N(this.concat(n(t,e))))},is:function(t){return this.length>0&&S.matches(this[0],t)},not:function(e){var i=[];if(Z(e)&&e.call!==t)this.each(function(t){e.call(this,t)||i.push(this)});else{var r="string"==typeof e?this.filter(e):M(e)&&Z(e.item)?o.call(e):n(e);this.forEach(function(t){r.indexOf(t)<0&&i.push(t)})}return n(i)},has:function(t){return this.filter(function(){return D(t)?n.contains(this,t):n(this).find(t).size()})},eq:function(t){return-1===t?this.slice(t):this.slice(t,+t+1)},first:function(){var t=this[0];return t&&!D(t)?t:n(t)},last:function(){var t=this[this.length-1];return t&&!D(t)?t:n(t)},find:function(t){var e,i=this;return e="object"==typeof t?n(t).filter(function(){var t=this;return r.some.call(i,function(e){return n.contains(e,t)})}):1==this.length?n(S.qsa(this[0],t)):this.map(function(){return S.qsa(this,t)})},closest:function(t,e){var i=this[0],r=!1;for("object"==typeof t&&(r=n(t));i&&!(r?r.indexOf(i)>=0:S.matches(i,t));)i=i!==e&&!_(i)&&i.parentNode;return n(i)},parents:function(t){for(var e=[],i=this;i.length>0;)i=n.map(i,function(t){return(t=t.parentNode)&&!_(t)&&e.indexOf(t)<0?(e.push(t),t):void 0});return B(e,t)},parent:function(t){return B(N(this.pluck("parentNode")),t)},children:function(t){return B(this.map(function(){return V(this)}),t)},contents:function(){return this.map(function(){return o.call(this.childNodes)})},siblings:function(t){return B(this.map(function(t,e){return s.call(V(e.parentNode),function(t){return t!==e})}),t)},empty:function(){return this.each(function(){this.innerHTML=""})},pluck:function(t){return n.map(this,function(e){return e[t]})},show:function(){return this.each(function(){"none"==this.style.display&&(this.style.display=""),"none"==getComputedStyle(this,"").getPropertyValue("display")&&(this.style.display=I(this.nodeName))})},replaceWith:function(t){return this.before(t).remove()},wrap:function(t){var e=Z(t);if(this[0]&&!e)var i=n(t).get(0),r=i.parentNode||this.length>1;return this.each(function(o){n(this).wrapAll(e?t.call(this,o):r?i.cloneNode(!0):i)})},wrapAll:function(t){if(this[0]){n(this[0]).before(t=n(t));for(var e;(e=t.children()).length;)t=e.first();n(t).append(this)}return this},wrapInner:function(t){var e=Z(t);return this.each(function(i){var r=n(this),o=r.contents(),s=e?t.call(this,i):t;o.length?o.wrapAll(s):r.append(s)})},unwrap:function(){return this.parent().each(function(){n(this).replaceWith(n(this).children())}),this},clone:function(){return this.map(function(){return this.cloneNode(!0)})},hide:function(){return this.css("display","none")},toggle:function(e){return this.each(function(){var i=n(this);(e===t?"none"==i.css("display"):e)?i.show():i.hide()})},prev:function(t){return n(this.pluck("previousElementSibling")).filter(t||"*")},next:function(t){return n(this.pluck("nextElementSibling")).filter(t||"*")},html:function(t){return 0===arguments.length?this.length>0?this[0].innerHTML:null:this.each(function(e){var i=this.innerHTML;n(this).empty().append(J(this,t,e,i))})},text:function(e){return 0===arguments.length?this.length>0?this[0].textContent:null:this.each(function(){this.textContent=e===t?"":""+e})},attr:function(n,i){var r;return"string"==typeof n&&i===t?0==this.length||1!==this[0].nodeType?t:"value"==n&&"INPUT"==this[0].nodeName?this.val():!(r=this[0].getAttribute(n))&&n in this[0]?this[0][n]:r:this.each(function(t){if(1===this.nodeType)if(D(n))for(e in n)X(this,e,n[e]);else X(this,n,J(this,i,t,this.getAttribute(n)))})},removeAttr:function(t){return this.each(function(){1===this.nodeType&&X(this,t)})},prop:function(e,n){return e=P[e]||e,n===t?this[0]&&this[0][e]:this.each(function(t){this[e]=J(this,n,t,this[e])})},data:function(e,n){var i=this.attr("data-"+e.replace(m,"-$1").toLowerCase(),n);return null!==i?Y(i):t},val:function(t){return 0===arguments.length?this[0]&&(this[0].multiple?n(this[0]).find("option").filter(function(){return this.selected}).pluck("value"):this[0].value):this.each(function(e){this.value=J(this,t,e,this.value)})},offset:function(t){if(t)return this.each(function(e){var i=n(this),r=J(this,t,e,i.offset()),o=i.offsetParent().offset(),s={top:r.top-o.top,left:r.left-o.left};"static"==i.css("position")&&(s.position="relative"),i.css(s)});if(0==this.length)return null;var e=this[0].getBoundingClientRect();return{left:e.left+window.pageXOffset,top:e.top+window.pageYOffset,width:Math.round(e.width),height:Math.round(e.height)}},css:function(t,i){if(arguments.length<2){var r=this[0],o=getComputedStyle(r,"");if(!r)return;if("string"==typeof t)return r.style[C(t)]||o.getPropertyValue(t);if(A(t)){var s={};return n.each(A(t)?t:[t],function(t,e){s[e]=r.style[C(e)]||o.getPropertyValue(e)}),s}}var a="";if("string"==L(t))i||0===i?a=F(t)+":"+H(t,i):this.each(function(){this.style.removeProperty(F(t))});else for(e in t)t[e]||0===t[e]?a+=F(e)+":"+H(e,t[e])+";":this.each(function(){this.style.removeProperty(F(e))});return this.each(function(){this.style.cssText+=";"+a})},index:function(t){return t?this.indexOf(n(t)[0]):this.parent().children().indexOf(this[0])},hasClass:function(t){return t?r.some.call(this,function(t){return this.test(W(t))},q(t)):!1},addClass:function(t){return t?this.each(function(e){i=[];var r=W(this),o=J(this,t,e,r);o.split(/\s+/g).forEach(function(t){n(this).hasClass(t)||i.push(t)},this),i.length&&W(this,r+(r?" ":"")+i.join(" "))}):this},removeClass:function(e){return this.each(function(n){return e===t?W(this,""):(i=W(this),J(this,e,n,i).split(/\s+/g).forEach(function(t){i=i.replace(q(t)," ")}),void W(this,i.trim()))})},toggleClass:function(e,i){return e?this.each(function(r){var o=n(this),s=J(this,e,r,W(this));s.split(/\s+/g).forEach(function(e){(i===t?!o.hasClass(e):i)?o.addClass(e):o.removeClass(e)})}):this},scrollTop:function(e){if(this.length){var n="scrollTop"in this[0];return e===t?n?this[0].scrollTop:this[0].pageYOffset:this.each(n?function(){this.scrollTop=e}:function(){this.scrollTo(this.scrollX,e)})}},scrollLeft:function(e){if(this.length){var n="scrollLeft"in this[0];return e===t?n?this[0].scrollLeft:this[0].pageXOffset:this.each(n?function(){this.scrollLeft=e}:function(){this.scrollTo(e,this.scrollY)})}},position:function(){if(this.length){var t=this[0],e=this.offsetParent(),i=this.offset(),r=d.test(e[0].nodeName)?{top:0,left:0}:e.offset();return i.top-=parseFloat(n(t).css("margin-top"))||0,i.left-=parseFloat(n(t).css("margin-left"))||0,r.top+=parseFloat(n(e[0]).css("border-top-width"))||0,r.left+=parseFloat(n(e[0]).css("border-left-width"))||0,{top:i.top-r.top,left:i.left-r.left}}},offsetParent:function(){return this.map(function(){for(var t=this.offsetParent||a.body;t&&!d.test(t.nodeName)&&"static"==n(t).css("position");)t=t.offsetParent;return t})}},n.fn.detach=n.fn.remove,["width","height"].forEach(function(e){var i=e.replace(/./,function(t){return t[0].toUpperCase()});n.fn[e]=function(r){var o,s=this[0];return r===t?$(s)?s["inner"+i]:_(s)?s.documentElement["scroll"+i]:(o=this.offset())&&o[e]:this.each(function(t){s=n(this),s.css(e,J(this,r,t,s[e]()))})}}),v.forEach(function(t,e){var i=e%2;n.fn[t]=function(){var t,o,r=n.map(arguments,function(e){return t=L(e),"object"==t||"array"==t||null==e?e:S.fragment(e)}),s=this.length>1;return r.length<1?this:this.each(function(t,a){o=i?a:a.parentNode,a=0==e?a.nextSibling:1==e?a.firstChild:2==e?a:null,r.forEach(function(t){if(s)t=t.cloneNode(!0);else if(!o)return n(t).remove();G(o.insertBefore(t,a),function(t){null==t.nodeName||"SCRIPT"!==t.nodeName.toUpperCase()||t.type&&"text/javascript"!==t.type||t.src||window.eval.call(window,t.innerHTML)})})})},n.fn[i?t+"To":"insert"+(e?"Before":"After")]=function(e){return n(e)[t](this),this}}),S.Z.prototype=n.fn,S.uniq=N,S.deserializeValue=Y,n.zepto=S,n}();window.Zepto=Zepto,void 0===window.$&&(window.$=Zepto),function(t){function l(t){return t._zid||(t._zid=e++)}function h(t,e,n,i){if(e=p(e),e.ns)var r=d(e.ns);return(s[l(t)]||[]).filter(function(t){return!(!t||e.e&&t.e!=e.e||e.ns&&!r.test(t.ns)||n&&l(t.fn)!==l(n)||i&&t.sel!=i)})}function p(t){var e=(""+t).split(".");return{e:e[0],ns:e.slice(1).sort().join(" ")}}function d(t){return new RegExp("(?:^| )"+t.replace(" "," .* ?")+"(?: |$)")}function m(t,e){return t.del&&!u&&t.e in f||!!e}function g(t){return c[t]||u&&f[t]||t}function v(e,i,r,o,a,u,f){var h=l(e),d=s[h]||(s[h]=[]);i.split(/\s/).forEach(function(i){if("ready"==i)return t(document).ready(r);var s=p(i);s.fn=r,s.sel=a,s.e in c&&(r=function(e){var n=e.relatedTarget;return!n||n!==this&&!t.contains(this,n)?s.fn.apply(this,arguments):void 0}),s.del=u;var l=u||r;s.proxy=function(t){if(t=j(t),!t.isImmediatePropagationStopped()){t.data=o;var i=l.apply(e,t._args==n?[t]:[t].concat(t._args));return i===!1&&(t.preventDefault(),t.stopPropagation()),i}},s.i=d.length,d.push(s),"addEventListener"in e&&e.addEventListener(g(s.e),s.proxy,m(s,f))})}function y(t,e,n,i,r){var o=l(t);(e||"").split(/\s/).forEach(function(e){h(t,e,n,i).forEach(function(e){delete s[o][e.i],"removeEventListener"in t&&t.removeEventListener(g(e.e),e.proxy,m(e,r))})})}function j(e,i){return(i||!e.isDefaultPrevented)&&(i||(i=e),t.each(E,function(t,n){var r=i[t];e[t]=function(){return this[n]=x,r&&r.apply(i,arguments)},e[n]=b}),(i.defaultPrevented!==n?i.defaultPrevented:"returnValue"in i?i.returnValue===!1:i.getPreventDefault&&i.getPreventDefault())&&(e.isDefaultPrevented=x)),e}function T(t){var e,i={originalEvent:t};for(e in t)w.test(e)||t[e]===n||(i[e]=t[e]);return j(i,t)}var n,e=1,i=Array.prototype.slice,r=t.isFunction,o=function(t){return"string"==typeof t},s={},a={},u="onfocusin"in window,f={focus:"focusin",blur:"focusout"},c={mouseenter:"mouseover",mouseleave:"mouseout"};a.click=a.mousedown=a.mouseup=a.mousemove="MouseEvents",t.event={add:v,remove:y},t.proxy=function(e,n){if(r(e)){var i=function(){return e.apply(n,arguments)};return i._zid=l(e),i}if(o(n))return t.proxy(e[n],e);throw new TypeError("expected function")},t.fn.bind=function(t,e,n){return this.on(t,e,n)},t.fn.unbind=function(t,e){return this.off(t,e)},t.fn.one=function(t,e,n,i){return this.on(t,e,n,i,1)};var x=function(){return!0},b=function(){return!1},w=/^([A-Z]|returnValue$|layer[XY]$)/,E={preventDefault:"isDefaultPrevented",stopImmediatePropagation:"isImmediatePropagationStopped",stopPropagation:"isPropagationStopped"};t.fn.delegate=function(t,e,n){return this.on(e,t,n)},t.fn.undelegate=function(t,e,n){return this.off(e,t,n)},t.fn.live=function(e,n){return t(document.body).delegate(this.selector,e,n),this},t.fn.die=function(e,n){return t(document.body).undelegate(this.selector,e,n),this},t.fn.on=function(e,s,a,u,f){var c,l,h=this;return e&&!o(e)?(t.each(e,function(t,e){h.on(t,s,a,e,f)}),h):(o(s)||r(u)||u===!1||(u=a,a=s,s=n),(r(a)||a===!1)&&(u=a,a=n),u===!1&&(u=b),h.each(function(n,r){f&&(c=function(t){return y(r,t.type,u),u.apply(this,arguments)}),s&&(l=function(e){var n,o=t(e.target).closest(s,r).get(0);return o&&o!==r?(n=t.extend(T(e),{currentTarget:o,liveFired:r}),(c||u).apply(o,[n].concat(i.call(arguments,1)))):void 0}),v(r,e,u,a,s,l||c)}))},t.fn.off=function(e,i,s){var a=this;return e&&!o(e)?(t.each(e,function(t,e){a.off(t,i,e)}),a):(o(i)||r(s)||s===!1||(s=i,i=n),s===!1&&(s=b),a.each(function(){y(this,e,s,i)}))},t.fn.trigger=function(e,n){return e=o(e)||t.isPlainObject(e)?t.Event(e):j(e),e._args=n,this.each(function(){"dispatchEvent"in this?this.dispatchEvent(e):t(this).triggerHandler(e,n)})},t.fn.triggerHandler=function(e,n){var i,r;return this.each(function(s,a){i=T(o(e)?t.Event(e):e),i._args=n,i.target=a,t.each(h(a,e.type||e),function(t,e){return r=e.proxy(i),i.isImmediatePropagationStopped()?!1:void 0})}),r},"focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select keydown keypress keyup error".split(" ").forEach(function(e){t.fn[e]=function(t){return t?this.bind(e,t):this.trigger(e)}}),["focus","blur"].forEach(function(e){t.fn[e]=function(t){return t?this.bind(e,t):this.each(function(){try{this[e]()}catch(t){}}),this}}),t.Event=function(t,e){o(t)||(e=t,t=e.type);var n=document.createEvent(a[t]||"Events"),i=!0;if(e)for(var r in e)"bubbles"==r?i=!!e[r]:n[r]=e[r];return n.initEvent(t,i,!0),j(n)}}(Zepto),function(t){function l(e,n,i){var r=t.Event(n);return t(e).trigger(r,i),!r.isDefaultPrevented()}function h(t,e,i,r){return t.global?l(e||n,i,r):void 0}function p(e){e.global&&0===t.active++&&h(e,null,"ajaxStart")}function d(e){e.global&&!--t.active&&h(e,null,"ajaxStop")}function m(t,e){var n=e.context;return e.beforeSend.call(n,t,e)===!1||h(e,n,"ajaxBeforeSend",[t,e])===!1?!1:void h(e,n,"ajaxSend",[t,e])}function g(t,e,n,i){var r=n.context,o="success";n.success.call(r,t,o,e),i&&i.resolveWith(r,[t,o,e]),h(n,r,"ajaxSuccess",[e,n,t]),y(o,e,n)}function v(t,e,n,i,r){var o=i.context;i.error.call(o,n,e,t),r&&r.rejectWith(o,[n,e,t]),h(i,o,"ajaxError",[n,i,t||e]),y(e,n,i)}function y(t,e,n){var i=n.context;n.complete.call(i,e,t),h(n,i,"ajaxComplete",[e,n]),d(n)}function x(){}function b(t){return t&&(t=t.split(";",2)[0]),t&&(t==f?"html":t==u?"json":s.test(t)?"script":a.test(t)&&"xml")||"text"}function w(t,e){return""==e?t:(t+"&"+e).replace(/[&?]{1,2}/,"?")}function E(e){e.processData&&e.data&&"string"!=t.type(e.data)&&(e.data=t.param(e.data,e.traditional)),!e.data||e.type&&"GET"!=e.type.toUpperCase()||(e.url=w(e.url,e.data),e.data=void 0)}function j(e,n,i,r){return t.isFunction(n)&&(r=i,i=n,n=void 0),t.isFunction(i)||(r=i,i=void 0),{url:e,data:n,success:i,dataType:r}}function S(e,n,i,r){var o,s=t.isArray(n),a=t.isPlainObject(n);t.each(n,function(n,u){o=t.type(u),r&&(n=i?r:r+"["+(a||"object"==o||"array"==o?n:"")+"]"),!r&&s?e.add(u.name,u.value):"array"==o||!i&&"object"==o?S(e,u,i,n):e.add(n,u)})}var i,r,e=0,n=window.document,o=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,s=/^(?:text|application)\/javascript/i,a=/^(?:text|application)\/xml/i,u="application/json",f="text/html",c=/^\s*$/;t.active=0,t.ajaxJSONP=function(i,r){if(!("type"in i))return t.ajax(i);var f,h,o=i.jsonpCallback,s=(t.isFunction(o)?o():o)||"jsonp"+ ++e,a=n.createElement("script"),u=window[s],c=function(e){t(a).triggerHandler("error",e||"abort")},l={abort:c};return r&&r.promise(l),t(a).on("load error",function(e,n){clearTimeout(h),t(a).off().remove(),"error"!=e.type&&f?g(f[0],l,i,r):v(null,n||"error",l,i,r),window[s]=u,f&&t.isFunction(u)&&u(f[0]),u=f=void 0}),m(l,i)===!1?(c("abort"),l):(window[s]=function(){f=arguments},a.src=i.url.replace(/\?(.+)=\?/,"?$1="+s),n.head.appendChild(a),i.timeout>0&&(h=setTimeout(function(){c("timeout")},i.timeout)),l)},t.ajaxSettings={type:"GET",beforeSend:x,success:x,error:x,complete:x,context:null,global:!0,xhr:function(){return new window.XMLHttpRequest},accepts:{script:"text/javascript, application/javascript, application/x-javascript",json:u,xml:"application/xml, text/xml",html:f,text:"text/plain"},crossDomain:!1,timeout:0,processData:!0,cache:!0},t.ajax=function(e){var n=t.extend({},e||{}),o=t.Deferred&&t.Deferred();for(i in t.ajaxSettings)void 0===n[i]&&(n[i]=t.ajaxSettings[i]);p(n),n.crossDomain||(n.crossDomain=/^([\w-]+:)?\/\/([^\/]+)/.test(n.url)&&RegExp.$2!=window.location.host),n.url||(n.url=window.location.toString()),E(n),n.cache===!1&&(n.url=w(n.url,"_="+Date.now()));var s=n.dataType,a=/\?.+=\?/.test(n.url);if("jsonp"==s||a)return a||(n.url=w(n.url,n.jsonp?n.jsonp+"=?":n.jsonp===!1?"":"callback=?")),t.ajaxJSONP(n,o);var j,u=n.accepts[s],f={},l=function(t,e){f[t.toLowerCase()]=[t,e]},h=/^([\w-]+:)\/\//.test(n.url)?RegExp.$1:window.location.protocol,d=n.xhr(),y=d.setRequestHeader;if(o&&o.promise(d),n.crossDomain||l("X-Requested-With","XMLHttpRequest"),l("Accept",u||"*/*"),(u=n.mimeType||u)&&(u.indexOf(",")>-1&&(u=u.split(",",2)[0]),d.overrideMimeType&&d.overrideMimeType(u)),(n.contentType||n.contentType!==!1&&n.data&&"GET"!=n.type.toUpperCase())&&l("Content-Type",n.contentType||"application/x-www-form-urlencoded"),n.headers)for(r in n.headers)l(r,n.headers[r]);if(d.setRequestHeader=l,d.onreadystatechange=function(){if(4==d.readyState){d.onreadystatechange=x,clearTimeout(j);var e,i=!1;if(d.status>=200&&d.status<300||304==d.status||0==d.status&&"file:"==h){s=s||b(n.mimeType||d.getResponseHeader("content-type")),e=d.responseText;try{"script"==s?(1,eval)(e):"xml"==s?e=d.responseXML:"json"==s&&(e=c.test(e)?null:t.parseJSON(e))}catch(r){i=r}i?v(i,"parsererror",d,n,o):g(e,d,n,o)}else v(d.statusText||null,d.status?"error":"abort",d,n,o)}},m(d,n)===!1)return d.abort(),v(null,"abort",d,n,o),d;if(n.xhrFields)for(r in n.xhrFields)d[r]=n.xhrFields[r];var T="async"in n?n.async:!0;d.open(n.type,n.url,T,n.username,n.password);for(r in f)y.apply(d,f[r]);return n.timeout>0&&(j=setTimeout(function(){d.onreadystatechange=x,d.abort(),v(null,"timeout",d,n,o)},n.timeout)),d.send(n.data?n.data:null),d},t.get=function(){return t.ajax(j.apply(null,arguments))},t.post=function(){var e=j.apply(null,arguments);return e.type="POST",t.ajax(e)},t.getJSON=function(){var e=j.apply(null,arguments);return e.dataType="json",t.ajax(e)},t.fn.load=function(e,n,i){if(!this.length)return this;var a,r=this,s=e.split(/\s/),u=j(e,n,i),f=u.success;return s.length>1&&(u.url=s[0],a=s[1]),u.success=function(e){r.html(a?t("<div>").html(e.replace(o,"")).find(a):e),f&&f.apply(r,arguments)},t.ajax(u),this};var T=encodeURIComponent;t.param=function(t,e){var n=[];return n.add=function(t,e){this.push(T(t)+"="+T(e))},S(n,t,e),n.join("&").replace(/%20/g,"+")}}(Zepto),function(t){t.fn.serializeArray=function(){var n,e=[];return t([].slice.call(this.get(0).elements)).each(function(){n=t(this);var i=n.attr("type");"fieldset"!=this.nodeName.toLowerCase()&&!this.disabled&&"submit"!=i&&"reset"!=i&&"button"!=i&&("radio"!=i&&"checkbox"!=i||this.checked)&&e.push({name:n.attr("name"),value:n.val()})}),e},t.fn.serialize=function(){var t=[];return this.serializeArray().forEach(function(e){t.push(encodeURIComponent(e.name)+"="+encodeURIComponent(e.value))}),t.join("&")},t.fn.submit=function(e){if(e)this.bind("submit",e);else if(this.length){var n=t.Event("submit");this.eq(0).trigger(n),n.isDefaultPrevented()||this.get(0).submit()}return this}}(Zepto),function(t){"__proto__"in{}||t.extend(t.zepto,{Z:function(e,n){return e=e||[],t.extend(e,t.fn),e.selector=n||"",e.__Z=!0,e},isZ:function(e){return"array"===t.type(e)&&"__Z"in e}});try{getComputedStyle(void 0)}catch(e){var n=getComputedStyle;window.getComputedStyle=function(t){try{return n(t)}catch(e){return null}}}}(Zepto);
</script>
<script >
	// clipboard paste
</script>
    <script>Zepto(function($) {
  var $leftPanel      = $('.left-panel');
  var $frameContainer = $('.frames-container');
  var $appFramesTab   = $('#application-frames-tab');
  var $allFramesTab   = $('#all-frames-tab');
  var $container      = $('.details-container');
  var $activeLine     = $frameContainer.find('.frame.active');
  var $activeFrame    = $container.find('.frame-code.active');
  var $ajaxEditors    = $('.editor-link[data-ajax]');
  var $header         = $('header');

  $header.on('mouseenter', function () {
    if ($header.find('.exception').height() >= 145) {
      $header.addClass('header-expand');
    }
  });
  $header.on('mouseleave', function () {
    $header.removeClass('header-expand');
  });

  /*
   * add prettyprint classes to our current active codeblock
   * run prettyPrint() to highlight the active code
   * scroll to the line when prettyprint is done
   * highlight the current line
   */
  var renderCurrentCodeblock = function(id) {

    // remove previous codeblocks so we only render the active one
    $('.code-block').removeClass('prettyprint');

    // pass the id in when we can for speed
    if (typeof(id) === 'undefined' || typeof(id) === 'object') {
      var id = /frame\-line\-([\d]*)/.exec($activeLine.attr('id'))[1];
    }

    $('#frame-code-linenums-' + id).addClass('prettyprint');
    $('#frame-code-args-' + id).addClass('prettyprint');

    prettyPrint(highlightCurrentLine);

  }

  /*
   * Highlight the active and neighboring lines for the current frame
   * Adjust the offset to make sure that line is veritcally centered
   */

  var highlightCurrentLine = function() {
    var activeLineNumber = +($activeLine.find('.frame-line').text());
    var $lines           = $activeFrame.find('.linenums li');
    var firstLine        = +($lines.first().val());

    // We show more code than needed, purely for proper syntax highlighting
    // Let’s hide a big chunk of that code and then scroll the remaining block
    $activeFrame.find('.code-block').first().css({
      maxHeight: 345,
      overflow: 'hidden',
    });

    var $offset = $($lines[activeLineNumber - firstLine - 10]);
    if ($offset.length > 0) {
      $offset[0].scrollIntoView();
    }

    $($lines[activeLineNumber - firstLine - 1]).addClass('current');
    $($lines[activeLineNumber - firstLine]).addClass('current active');
    $($lines[activeLineNumber - firstLine + 1]).addClass('current');

    $container.scrollTop(0);

  }

  /*
   * click handler for loading codeblocks
   */

  $frameContainer.on('click', '.frame', function() {

    var $this  = $(this);
    var id     = /frame\-line\-([\d]*)/.exec($this.attr('id'))[1];
    var $codeFrame = $('#frame-code-' + id);

    if ($codeFrame) {

      $activeLine.removeClass('active');
      $activeFrame.removeClass('active');

      $this.addClass('active');
      $codeFrame.addClass('active');

      $activeLine  = $this;
      $activeFrame = $codeFrame;

      renderCurrentCodeblock(id);

    }

  });

  var clipboard = new Clipboard('.clipboard');
  var showTooltip = function(elem, msg) {
    elem.setAttribute('class', 'clipboard tooltipped tooltipped-s');
    elem.setAttribute('aria-label', msg);
  };

  clipboard.on('success', function(e) {
      e.clearSelection();

      showTooltip(e.trigger, 'Copied!');
  });

  clipboard.on('error', function(e) {
      showTooltip(e.trigger, fallbackMessage(e.action));
  });

  var btn = document.querySelector('.clipboard');

  btn.addEventListener('mouseleave', function(e) {
    e.currentTarget.setAttribute('class', 'clipboard');
    e.currentTarget.removeAttribute('aria-label');
  });

  function fallbackMessage(action) {
    var actionMsg = '';
    var actionKey = (action === 'cut' ? 'X' : 'C');

    if (/Mac/i.test(navigator.userAgent)) {
        actionMsg = 'Press ⌘-' + actionKey + ' to ' + action;
    } else {
        actionMsg = 'Press Ctrl-' + actionKey + ' to ' + action;
    }

    return actionMsg;
  }

  function scrollIntoView($node, $parent) {
    var nodeOffset = $node.offset();
    var nodeTop = nodeOffset.top;
    var nodeBottom = nodeTop + nodeOffset.height;
    var parentScrollTop = $parent.scrollTop();
    var parentHeight = $parent.height();

    if (nodeTop < 0) {
      $parent.scrollTop(parentScrollTop + nodeTop);
    } else if (nodeBottom > parentHeight) {
      $parent.scrollTop(parentScrollTop + nodeBottom - parentHeight);
    }
  }

  $(document).on('keydown', function(e) {
    var applicationFrames = $frameContainer.hasClass('frames-container-application'),
        frameClass = applicationFrames ? '.frame.frame-application' : '.frame';

	  if(e.ctrlKey || e.which === 74  || e.which === 75) {
		  // CTRL+Arrow-UP/k and Arrow-Down/j support:
		  // 1) select the next/prev element
		  // 2) make sure the newly selected element is within the view-scope
		  // 3) focus the (right) container, so arrow-up/down (without ctrl) scroll the details
		  if (e.which === 38 /* arrow up */ || e.which === 75 /* k */) {
			  $activeLine.prev(frameClass).click();
			  scrollIntoView($activeLine, $leftPanel);
			  $container.focus();
			  e.preventDefault();
		  } else if (e.which === 40 /* arrow down */ || e.which === 74 /* j */) {
			  $activeLine.next(frameClass).click();
			  scrollIntoView($activeLine, $leftPanel);
			  $container.focus();
			  e.preventDefault();
		  }
	  } else if (e.which == 78 /* n */) {
      if ($appFramesTab.length) {
        setActiveFramesTab($('.frames-tab:not(.frames-tab-active)'));
      }
    }
  });

  // Render late enough for highlightCurrentLine to be ready
  renderCurrentCodeblock();

  // Avoid to quit the page with some protocol (e.g. IntelliJ Platform REST API)
  $ajaxEditors.on('click', function(e){
    e.preventDefault();
    $.get(this.href);
  });

  // Symfony VarDumper: Close the by default expanded objects
  $('.sf-dump-expanded')
    .removeClass('sf-dump-expanded')
    .addClass('sf-dump-compact');
  $('.sf-dump-toggle span').html('&#9654;');

  // Make the given frames-tab active
  function setActiveFramesTab($tab) {
    $tab.addClass('frames-tab-active');

    if ($tab.attr('id') == 'application-frames-tab') {
      $frameContainer.addClass('frames-container-application');
      $allFramesTab.removeClass('frames-tab-active');
    } else {
      $frameContainer.removeClass('frames-container-application');
      $appFramesTab.removeClass('frames-tab-active');
    }
  }

  $('a.frames-tab').on('click', function(e) {
    e.preventDefault();
    setActiveFramesTab($(this));
  });
});
</script>
  </body>
</html>
