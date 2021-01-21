<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../template/jsp_common.jsp" />

<html lang="en" class=" -webkit-">
<head>

<meta charset="UTF-8">
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


<title>CodePen - Responsive Mail UI</title>
<meta name="viewport" content="width=device-width">

<style media="" data-href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500">/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxFIzIFKw.woff2) format('woff2');
	unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxMIzIFKw.woff2) format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxEIzIFKw.woff2) format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxLIzIFKw.woff2) format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxHIzIFKw.woff2) format('woff2');
	unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxGIzIFKw.woff2) format('woff2');
	unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 100;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOkCnqEu92Fr1MmgVxIIzI.woff2) format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fCRc4EsA.woff2) format('woff2');
	unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fABc4EsA.woff2) format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fCBc4EsA.woff2) format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fBxc4EsA.woff2) format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fCxc4EsA.woff2) format('woff2');
	unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fChc4EsA.woff2) format('woff2');
	unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 300;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmSU5fBBc4.woff2) format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu72xKOzY.woff2) format('woff2');
	unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu5mxKOzY.woff2) format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7mxKOzY.woff2) format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu4WxKOzY.woff2) format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7WxKOzY.woff2) format('woff2');
	unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7GxKOzY.woff2) format('woff2');
	unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu4mxK.woff2) format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fCRc4EsA.woff2) format('woff2');
	unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fABc4EsA.woff2) format('woff2');
	unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fCBc4EsA.woff2) format('woff2');
	unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fBxc4EsA.woff2) format('woff2');
	unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fCxc4EsA.woff2) format('woff2');
	unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fChc4EsA.woff2) format('woff2');
	unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src: url(https://fonts.gstatic.com/s/roboto/v20/KFOlCnqEu92Fr1MmEU9fBBc4.woff2) format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>
<style media="" data-href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">/*!
 * Bootstrap v3.0.0
 *
 * Copyright 2013 Twitter, Inc
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Designed and built with all the love in the world @twitter by @mdo and @fat.
 */
article, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {
	display: block;
}

audio, canvas, video {
	display: inline-block;
}

audio:not([controls]) {
	display: none;
	height: 0;
}

[hidden] {
	display: none;
}

html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}

body {
	margin: 0;
}

a:focus {
	outline: thin dotted;
}

a:active, a:hover {
	outline: 0;
}

h1 {
	font-size: 2em;
	margin: 0.67em 0;
}

abbr[title] {
	border-bottom: 1px dotted;
}

b, strong {
	font-weight: bold;
}

dfn {
	font-style: italic;
}

hr {
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	height: 0;
}

mark {
	background: #ff0;
	color: #000;
}

code, kbd, pre, samp {
	font-family: monospace, serif;
	font-size: 1em;
}

pre {
	white-space: pre-wrap;
}

q {
	quotes: "\201C" "\201D" "\2018" "\2019";
}

small {
	font-size: 80%;
}

sub, sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline;
}

sup {
	top: -0.5em;
}

sub {
	bottom: -0.25em;
}

img {
	border: 0;
}

svg:not(:root) {
	overflow: hidden;
}

figure {
	margin: 0;
}

fieldset {
	border: 1px solid #c0c0c0;
	margin: 0 2px;
	padding: 0.35em 0.625em 0.75em;
}

legend {
	border: 0;
	padding: 0;
}

button, input, select, textarea {
	font-family: inherit;
	font-size: 100%;
	margin: 0;
}

button, input {
	line-height: normal;
}

button, select {
	text-transform: none;
}

button, html input[type="button"], input[type="reset"], input[type="submit"] {
	-webkit-appearance: button;
	cursor: pointer;
}

button[disabled], html input[disabled] {
	cursor: default;
}

input[type="checkbox"], input[type="radio"] {
	box-sizing: border-box;
	padding: 0;
}

input[type="search"] {
	-webkit-appearance: textfield;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
}

input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration {
	-webkit-appearance: none;
}

button::-moz-focus-inner, input::-moz-focus-inner {
	border: 0;
	padding: 0;
}

textarea {
	overflow: auto;
	vertical-align: top;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

*, *:before, *:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

html {
	font-size: 62.5%;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.428571429;
	color: #333333;
	background-color: #ffffff;
}

input, button, select, textarea {
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

button, input, select[multiple], textarea {
	background-image: none;
}

a {
	color: #428bca;
	text-decoration: none;
}

a:hover, a:focus {
	color: #2a6496;
	text-decoration: underline;
}

a:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}

img {
	vertical-align: middle;
}

.img-responsive {
	display: block;
	max-width: 100%;
	height: auto;
}

.img-rounded {
	border-radius: 6px;
}

.img-thumbnail {
	padding: 4px;
	line-height: 1.428571429;
	background-color: #ffffff;
	border: 1px solid #dddddd;
	border-radius: 4px;
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
	display: inline-block;
	max-width: 100%;
	height: auto;
}

.img-circle {
	border-radius: 50%;
}

hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #eeeeee;
}

.sr-only {
	position: absolute;
	width: 1px;
	height: 1px;
	margin: -1px;
	padding: 0;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

@font-face {
	font-family: 'Glyphicons Halflings';
	src: url("https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/../fonts/glyphicons-halflings-regular.eot");
	src: url("https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/../fonts/glyphicons-halflings-regular.eot?#iefix") format('embedded-opentype'), url("https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/../fonts/glyphicons-halflings-regular.woff") format('woff'),
		url("https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/../fonts/glyphicons-halflings-regular.ttf") format('truetype'), url("https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/../fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular") format('svg');
}

.glyphicon {
	position: relative;
	top: 1px;
	display: inline-block;
	font-family: 'Glyphicons Halflings';
	font-style: normal;
	font-weight: normal;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
}

.glyphicon-asterisk:before {
	content: "\2a";
}

.glyphicon-plus:before {
	content: "\2b";
}

.glyphicon-euro:before {
	content: "\20ac";
}

.glyphicon-minus:before {
	content: "\2212";
}

.glyphicon-cloud:before {
	content: "\2601";
}

.glyphicon-envelope:before {
	content: "\2709";
}

.glyphicon-pencil:before {
	content: "\270f";
}

.glyphicon-glass:before {
	content: "\e001";
}

.glyphicon-music:before {
	content: "\e002";
}

.glyphicon-search:before {
	content: "\e003";
}

.glyphicon-heart:before {
	content: "\e005";
}

.glyphicon-star:before {
	content: "\e006";
}

.glyphicon-star-empty:before {
	content: "\e007";
}

.glyphicon-user:before {
	content: "\e008";
}

.glyphicon-film:before {
	content: "\e009";
}

.glyphicon-th-large:before {
	content: "\e010";
}

.glyphicon-th:before {
	content: "\e011";
}

.glyphicon-th-list:before {
	content: "\e012";
}

.glyphicon-ok:before {
	content: "\e013";
}

.glyphicon-remove:before {
	content: "\e014";
}

.glyphicon-zoom-in:before {
	content: "\e015";
}

.glyphicon-zoom-out:before {
	content: "\e016";
}

.glyphicon-off:before {
	content: "\e017";
}

.glyphicon-signal:before {
	content: "\e018";
}

.glyphicon-cog:before {
	content: "\e019";
}

.glyphicon-trash:before {
	content: "\e020";
}

.glyphicon-home:before {
	content: "\e021";
}

.glyphicon-file:before {
	content: "\e022";
}

.glyphicon-time:before {
	content: "\e023";
}

.glyphicon-road:before {
	content: "\e024";
}

.glyphicon-download-alt:before {
	content: "\e025";
}

.glyphicon-download:before {
	content: "\e026";
}

.glyphicon-upload:before {
	content: "\e027";
}

.glyphicon-inbox:before {
	content: "\e028";
}

.glyphicon-play-circle:before {
	content: "\e029";
}

.glyphicon-repeat:before {
	content: "\e030";
}

.glyphicon-refresh:before {
	content: "\e031";
}

.glyphicon-list-alt:before {
	content: "\e032";
}

.glyphicon-flag:before {
	content: "\e034";
}

.glyphicon-headphones:before {
	content: "\e035";
}

.glyphicon-volume-off:before {
	content: "\e036";
}

.glyphicon-volume-down:before {
	content: "\e037";
}

.glyphicon-volume-up:before {
	content: "\e038";
}

.glyphicon-qrcode:before {
	content: "\e039";
}

.glyphicon-barcode:before {
	content: "\e040";
}

.glyphicon-tag:before {
	content: "\e041";
}

.glyphicon-tags:before {
	content: "\e042";
}

.glyphicon-book:before {
	content: "\e043";
}

.glyphicon-print:before {
	content: "\e045";
}

.glyphicon-font:before {
	content: "\e047";
}

.glyphicon-bold:before {
	content: "\e048";
}

.glyphicon-italic:before {
	content: "\e049";
}

.glyphicon-text-height:before {
	content: "\e050";
}

.glyphicon-text-width:before {
	content: "\e051";
}

.glyphicon-align-left:before {
	content: "\e052";
}

.glyphicon-align-center:before {
	content: "\e053";
}

.glyphicon-align-right:before {
	content: "\e054";
}

.glyphicon-align-justify:before {
	content: "\e055";
}

.glyphicon-list:before {
	content: "\e056";
}

.glyphicon-indent-left:before {
	content: "\e057";
}

.glyphicon-indent-right:before {
	content: "\e058";
}

.glyphicon-facetime-video:before {
	content: "\e059";
}

.glyphicon-picture:before {
	content: "\e060";
}

.glyphicon-map-marker:before {
	content: "\e062";
}

.glyphicon-adjust:before {
	content: "\e063";
}

.glyphicon-tint:before {
	content: "\e064";
}

.glyphicon-edit:before {
	content: "\e065";
}

.glyphicon-share:before {
	content: "\e066";
}

.glyphicon-check:before {
	content: "\e067";
}

.glyphicon-move:before {
	content: "\e068";
}

.glyphicon-step-backward:before {
	content: "\e069";
}

.glyphicon-fast-backward:before {
	content: "\e070";
}

.glyphicon-backward:before {
	content: "\e071";
}

.glyphicon-play:before {
	content: "\e072";
}

.glyphicon-pause:before {
	content: "\e073";
}

.glyphicon-stop:before {
	content: "\e074";
}

.glyphicon-forward:before {
	content: "\e075";
}

.glyphicon-fast-forward:before {
	content: "\e076";
}

.glyphicon-step-forward:before {
	content: "\e077";
}

.glyphicon-eject:before {
	content: "\e078";
}

.glyphicon-chevron-left:before {
	content: "\e079";
}

.glyphicon-chevron-right:before {
	content: "\e080";
}

.glyphicon-plus-sign:before {
	content: "\e081";
}

.glyphicon-minus-sign:before {
	content: "\e082";
}

.glyphicon-remove-sign:before {
	content: "\e083";
}

.glyphicon-ok-sign:before {
	content: "\e084";
}

.glyphicon-question-sign:before {
	content: "\e085";
}

.glyphicon-info-sign:before {
	content: "\e086";
}

.glyphicon-screenshot:before {
	content: "\e087";
}

.glyphicon-remove-circle:before {
	content: "\e088";
}

.glyphicon-ok-circle:before {
	content: "\e089";
}

.glyphicon-ban-circle:before {
	content: "\e090";
}

.glyphicon-arrow-left:before {
	content: "\e091";
}

.glyphicon-arrow-right:before {
	content: "\e092";
}

.glyphicon-arrow-up:before {
	content: "\e093";
}

.glyphicon-arrow-down:before {
	content: "\e094";
}

.glyphicon-share-alt:before {
	content: "\e095";
}

.glyphicon-resize-full:before {
	content: "\e096";
}

.glyphicon-resize-small:before {
	content: "\e097";
}

.glyphicon-exclamation-sign:before {
	content: "\e101";
}

.glyphicon-gift:before {
	content: "\e102";
}

.glyphicon-leaf:before {
	content: "\e103";
}

.glyphicon-eye-open:before {
	content: "\e105";
}

.glyphicon-eye-close:before {
	content: "\e106";
}

.glyphicon-warning-sign:before {
	content: "\e107";
}

.glyphicon-plane:before {
	content: "\e108";
}

.glyphicon-random:before {
	content: "\e110";
}

.glyphicon-comment:before {
	content: "\e111";
}

.glyphicon-magnet:before {
	content: "\e112";
}

.glyphicon-chevron-up:before {
	content: "\e113";
}

.glyphicon-chevron-down:before {
	content: "\e114";
}

.glyphicon-retweet:before {
	content: "\e115";
}

.glyphicon-shopping-cart:before {
	content: "\e116";
}

.glyphicon-folder-close:before {
	content: "\e117";
}

.glyphicon-folder-open:before {
	content: "\e118";
}

.glyphicon-resize-vertical:before {
	content: "\e119";
}

.glyphicon-resize-horizontal:before {
	content: "\e120";
}

.glyphicon-hdd:before {
	content: "\e121";
}

.glyphicon-bullhorn:before {
	content: "\e122";
}

.glyphicon-certificate:before {
	content: "\e124";
}

.glyphicon-thumbs-up:before {
	content: "\e125";
}

.glyphicon-thumbs-down:before {
	content: "\e126";
}

.glyphicon-hand-right:before {
	content: "\e127";
}

.glyphicon-hand-left:before {
	content: "\e128";
}

.glyphicon-hand-up:before {
	content: "\e129";
}

.glyphicon-hand-down:before {
	content: "\e130";
}

.glyphicon-circle-arrow-right:before {
	content: "\e131";
}

.glyphicon-circle-arrow-left:before {
	content: "\e132";
}

.glyphicon-circle-arrow-up:before {
	content: "\e133";
}

.glyphicon-circle-arrow-down:before {
	content: "\e134";
}

.glyphicon-globe:before {
	content: "\e135";
}

.glyphicon-tasks:before {
	content: "\e137";
}

.glyphicon-filter:before {
	content: "\e138";
}

.glyphicon-fullscreen:before {
	content: "\e140";
}

.glyphicon-dashboard:before {
	content: "\e141";
}

.glyphicon-heart-empty:before {
	content: "\e143";
}

.glyphicon-link:before {
	content: "\e144";
}

.glyphicon-phone:before {
	content: "\e145";
}

.glyphicon-usd:before {
	content: "\e148";
}

.glyphicon-gbp:before {
	content: "\e149";
}

.glyphicon-sort:before {
	content: "\e150";
}

.glyphicon-sort-by-alphabet:before {
	content: "\e151";
}

.glyphicon-sort-by-alphabet-alt:before {
	content: "\e152";
}

.glyphicon-sort-by-order:before {
	content: "\e153";
}

.glyphicon-sort-by-order-alt:before {
	content: "\e154";
}

.glyphicon-sort-by-attributes:before {
	content: "\e155";
}

.glyphicon-sort-by-attributes-alt:before {
	content: "\e156";
}

.glyphicon-unchecked:before {
	content: "\e157";
}

.glyphicon-expand:before {
	content: "\e158";
}

.glyphicon-collapse-down:before {
	content: "\e159";
}

.glyphicon-collapse-up:before {
	content: "\e160";
}

.glyphicon-log-in:before {
	content: "\e161";
}

.glyphicon-flash:before {
	content: "\e162";
}

.glyphicon-log-out:before {
	content: "\e163";
}

.glyphicon-new-window:before {
	content: "\e164";
}

.glyphicon-record:before {
	content: "\e165";
}

.glyphicon-save:before {
	content: "\e166";
}

.glyphicon-open:before {
	content: "\e167";
}

.glyphicon-saved:before {
	content: "\e168";
}

.glyphicon-import:before {
	content: "\e169";
}

.glyphicon-export:before {
	content: "\e170";
}

.glyphicon-send:before {
	content: "\e171";
}

.glyphicon-floppy-disk:before {
	content: "\e172";
}

.glyphicon-floppy-saved:before {
	content: "\e173";
}

.glyphicon-floppy-remove:before {
	content: "\e174";
}

.glyphicon-floppy-save:before {
	content: "\e175";
}

.glyphicon-floppy-open:before {
	content: "\e176";
}

.glyphicon-credit-card:before {
	content: "\e177";
}

.glyphicon-transfer:before {
	content: "\e178";
}

.glyphicon-cutlery:before {
	content: "\e179";
}

.glyphicon-header:before {
	content: "\e180";
}

.glyphicon-compressed:before {
	content: "\e181";
}

.glyphicon-earphone:before {
	content: "\e182";
}

.glyphicon-phone-alt:before {
	content: "\e183";
}

.glyphicon-tower:before {
	content: "\e184";
}

.glyphicon-stats:before {
	content: "\e185";
}

.glyphicon-sd-video:before {
	content: "\e186";
}

.glyphicon-hd-video:before {
	content: "\e187";
}

.glyphicon-subtitles:before {
	content: "\e188";
}

.glyphicon-sound-stereo:before {
	content: "\e189";
}

.glyphicon-sound-dolby:before {
	content: "\e190";
}

.glyphicon-sound-5-1:before {
	content: "\e191";
}

.glyphicon-sound-6-1:before {
	content: "\e192";
}

.glyphicon-sound-7-1:before {
	content: "\e193";
}

.glyphicon-copyright-mark:before {
	content: "\e194";
}

.glyphicon-registration-mark:before {
	content: "\e195";
}

.glyphicon-cloud-download:before {
	content: "\e197";
}

.glyphicon-cloud-upload:before {
	content: "\e198";
}

.glyphicon-tree-conifer:before {
	content: "\e199";
}

.glyphicon-tree-deciduous:before {
	content: "\e200";
}

.glyphicon-briefcase:before {
	content: "\1f4bc";
}

.glyphicon-calendar:before {
	content: "\1f4c5";
}

.glyphicon-pushpin:before {
	content: "\1f4cc";
}

.glyphicon-paperclip:before {
	content: "\1f4ce";
}

.glyphicon-camera:before {
	content: "\1f4f7";
}

.glyphicon-lock:before {
	content: "\1f512";
}

.glyphicon-bell:before {
	content: "\1f514";
}

.glyphicon-bookmark:before {
	content: "\1f516";
}

.glyphicon-fire:before {
	content: "\1f525";
}

.glyphicon-wrench:before {
	content: "\1f527";
}
</style>
<style media="" data-href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset,
	form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
	display: block
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}
</style>



<style>
* {
	box-sizing: border-box;
}

body {
	background: #FFF;
	font-family: Roboto, sans-serif;
	font-weight: 400;
	line-height: 1.5em;
	color: #888;
}

h1 {
	font-size: 50px;
	line-height: 40px;
	font-weight: 100;
}

p {
	margin-bottom: 1em;
}

a {
	color: #61C7B3;
	text-decoration: none;
	transition-duration: 0.3s;
}

a:hover {
	color: #338f7d;
	transition-duration: 0.05s;
	text-decoration: none;
}

.circle-icon {
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 28px;
	border: 2px solid #B4BBC1;
	border-radius: 100px;
	font-size: 14px;
	color: #B4BBC1;
	cursor: pointer;
	display: block;
	float: left;
}

.circle-icon.small {
	height: 25px;
	width: 25px;
	line-height: 23px;
	font-size: 11px;
}

.circle-icon:hover {
	color: #57636C;
	border-color: #57636C;
}

.circle-icon.red {
	color: #D23B3D;
	border-color: #D23B3D;
}

.circle-icon.red:hover {
	color: #791C1E;
	border-color: #791C1E;
}

.checkbox-wrapper {
	cursor: pointer;
	height: 20px;
	width: 20px;
	position: relative;
	display: inline-block;
	box-shadow: inset 0 0 0 1px #A3ADB2;
	border-radius: 1px;
}

.checkbox-wrapper input {
	opacity: 0;
	cursor: pointer;
}

.checkbox-wrapper input:checked ~ label {
	opacity: 1;
}

.checkbox-wrapper label {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	cursor: pointer;
	background: #A3ADB2;
	opacity: 0;
	transition-duration: 0.05s;
}

.checkbox-wrapper label:hover {
	background: #95a1a6;
	opacity: 0.5;
}

.checkbox-wrapper label:active {
	background: #87949b;
}

#sidebar {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 300px;
	background: #1D2127;
	transition-duration: 0.3s;
	z-index: 5;
}

#sidebar, #sidebar a {
	color: #ABB4BE;
}

#sidebar .logo-container {
	font-weight: 100;
	font-size: 50px;
	line-height: 40px;
	text-align: center;
	margin: 50px 0;
	cursor: pointer;
}

#sidebar .logo-container .logo {
	position: relative;
	top: -6px;
	font-size: 25px;
	margin-right: 15px;
	padding: 10px;
	border: 2px solid #61C7B3;
	border-radius: 100px;
	text-indent: 1px;
	color: #61C7B3;
}

#sidebar .compose-button {
	border-radius: 100px;
	padding: 13px 20px;
	text-align: center;
	font-weight: 500;
	text-transform: uppercase;
	color: #61C7B3;
	border: 2px solid #61C7B3;
	display: block;
	margin: 0 50px 30px 50px;
	cursor: pointer;
}

#sidebar .compose-button:hover {
	color: #ABB4BE;
	border-color: #ABB4BE;
}

#sidebar .menu-segment {
	padding: 0 50px 0 70px;
}

#sidebar .menu-segment ul, #sidebar .menu-segment li {
	margin: 0;
	padding: 0;
}

#sidebar .menu-segment .ball.pink {
	border-color: #EA4C89;
}

#sidebar .menu-segment .ball.green {
	border-color: #9AE14F;
}

#sidebar .menu-segment .ball.blue {
	border-color: #1BC3E1;
}

#sidebar .menu-segment li.title {
	text-transform: uppercase;
	font-weight: 600;
	padding: 10px 0;
	color: #465162;
}

#sidebar .menu-segment li.title .icon {
	float: right;
}

#sidebar .menu-segment li.active a, #sidebar .menu-segment li.active a:hover {
	background: #282d36;
}

#sidebar .menu-segment li a {
	display: block;
	margin: 0 -50px 0 -70px;
	padding: 10px 50px 10px 70px;
}

#sidebar .menu-segment li a:hover {
	background: #21262d;
}

#sidebar .menu-segment li .italic-link {
	margin-left: -30px;
	font-style: italic;
	color: #465162;
}

#sidebar .menu-segment li .italic-link, #sidebar .menu-segment li .italic-link:hover {
	background: transparent;
}

#sidebar .menu-segment li .italic-link:hover {
	color: #ABB4BE;
}

#sidebar .menu-segment .labels li a span, #sidebar .menu-segment .chat li a span {
	display: block;
	border: 5px solid red;
	border-radius: 100px;
	margin-top: 6px;
}

#sidebar .menu-segment .labels.labels li a span, #sidebar .menu-segment .chat.labels li a span {
	float: right;
}

#sidebar .menu-segment .labels.chat li a span, #sidebar .menu-segment .chat.chat li a span {
	float: left;
	margin-right: 10px;
}

#sidebar .menu-segment .chat li a {
	padding-left: 50px;
}

#sidebar .separator {
	margin: 30px 35px;
	height: 1px;
	background: #2D3138;
}

#sidebar .bottom-padding {
	height: 100px;
}

#sidebar>.nano-pane {
	background: transparent;
}

#sidebar>.nano-pane .nano-slider {
	background: rgba(255, 255, 255, 0.1);
}

#main {
	position: fixed;
	top: 0;
	left: 300px;
	bottom: 0;
	right: 0;
	z-index: 4;
	transition-duration: 0.3s;
	padding-left: 4px;
	box-shadow: inset 4px 0 0 #EFEFEF, inset 5px 0 0 #e2e2e2;
}

#main .overlay {
	position: absolute;
	top: 0;
	left: -10px;
	right: 0;
	bottom: 100%;
	background: rgba(0, 0, 0, 0.4);
	z-index: 5;
	opacity: 0;
	transition-duration: 0s;
	transition-property: opacity;
}

.show-main-overlay #main .overlay {
	opacity: 1;
	bottom: 0;
	transition-duration: 0.5s;
}

#main .header {
	padding: 50px 60px;
	border-bottom: 1px solid #EFEFEF;
	overflow: hidden;
}

#main .header .page-title {
	display: block;
}

#main .header .page-title .sidebar-toggle-btn {
	width: 0;
	margin-top: 1px;
	padding: 11px 0 0 0;
	float: left;
	position: relative;
	display: block;
	cursor: pointer;
	transition-duration: 0.3s;
	transition-delay: 0.5s;
	opacity: 0;
	margin-right: 0;
}

.show-sidebar #main .header .page-title .sidebar-toggle-btn {
	transition-delay: 0s;
}

#main .header .page-title .sidebar-toggle-btn .line {
	height: 3px;
	display: block;
	background: #888;
	margin-bottom: 4px;
	transition-duration: 0.5s;
	transition-delay: 0.5s;
}

.show-sidebar #main .header .page-title .sidebar-toggle-btn .line-angle1 {
	transform: rotate(-120deg);
}

.show-sidebar #main .header .page-title .sidebar-toggle-btn .line-angle2 {
	transform: rotate(120deg);
}

#main .header .page-title .sidebar-toggle-btn .line-angle1 {
	width: 8px;
	margin: 0;
	position: absolute;
	top: 15px;
	left: -11px;
	transform: rotate(-60deg);
}

#main .header .page-title .sidebar-toggle-btn .line-angle2 {
	width: 8px;
	margin: 0;
	position: absolute;
	top: 21px;
	left: -11px;
	transform: rotate(60deg);
}

#main .header .page-title .icon {
	font-size: 15px;
	margin-left: 20px;
	position: relative;
	top: -5px;
	cursor: pointer;
}

#main .header .search-box {
	float: right;
	width: 150px;
	height: 40px;
	position: relative;
}

#main .header .search-box input, #main .header .search-box .icon {
	transition-duration: 0.3s;
}

#main .header .search-box input {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	border: 0;
	padding: 0;
	margin: 0;
	text-indent: 15px;
	height: 40px;
	z-index: 2;
	outline: none;
	color: #999;
	background: transparent;
	border: 2px solid #EFEFEF;
	border-radius: 5px;
	transition-timing-function: cubic-bezier(0.3, 1.5, 0.6, 1);
}

#main .header .search-box input:focus {
	color: #333;
	border-color: #d6d6d6;
	width: 150%;
}

#main .header .search-box input:focus ~ .icon {
	opacity: 1;
	z-index: 3;
	color: #61C7B3;
}

#main .header .search-box .icon {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	width: 40px;
	text-align: center;
	line-height: 40px;
	z-index: 1;
	cursor: pointer;
	opacity: 0.5;
}

#main .action-bar {
	padding: 20px 60px;
	border-bottom: 1px solid #EFEFEF;
	overflow: hidden;
}

#main .action-bar li {
	float: left;
	margin-right: 10px;
}

#main #main-nano-wrapper {
	position: absolute;
	top: 214px;
	bottom: 0;
	height: auto;
}

#main .message-list {
	display: block;
}

#main .message-list li {
	position: relative;
	display: block;
	height: 50px;
	line-height: 50px;
	cursor: default;
	transition-duration: 0.3s;
	/*
			.col-1 {
				width: 140px;
				text-align: right;
				padding-right: 37px;
				padding-top: 15px;

				.checkbox-wrapper, .icon, .dot {
					float: right;
					display: block;
				}

				.icon {
					margin-left: 10px;
					font-size: 20px;
				}

				.dot {
					border: 5px solid transparent;
					border-radius: 100px;
					margin-right: 24px;
					margin-top: 5px;
				}
			}
			.col-2 {
				width: 270px;
			}
			.col-3 {
				position: absolute;
				top: 0;
				left: 390px; // Covers previous cols
				right: 120px;

				.grey {
					opacity: .7;
				}
			}
			.col-4 {
				width: 120px;
				padding-left: 20px;
				float: right;
			}
			*/
}

#main .message-list li:hover, #main .message-list li.active, #main .message-list li.selected {
	background: #EFEFEF;
	transition-duration: 0.05s;
}

#main .message-list li.active, #main .message-list li.active:hover {
	box-shadow: inset 5px 0 0 #61C7B3;
}

#main .message-list li.unread {
	font-weight: 600;
	color: #555;
}

#main .message-list li .col {
	float: left;
	position: relative;
}

#main .message-list li.blue-dot .col-1 .dot {
	border-color: #1BC3E1;
}

#main .message-list li.orange-dot .col-1 .dot {
	border-color: #E2A917;
}

#main .message-list li.green-dot .col-1 .dot {
	border-color: #9AE14F;
}

#main .message-list li .col-1 {
	width: 400px;
}

#main .message-list li .col-1 .star-toggle, #main .message-list li .col-1 .checkbox-wrapper, #main .message-list li .col-1 .dot {
	display: block;
	float: left;
}

#main .message-list li .col-1 .dot {
	border: 4px solid transparent;
	border-radius: 100px;
	margin: 22px 26px 0;
	height: 0;
	width: 0;
	line-height: 0;
	font-size: 0;
}

#main .message-list li .col-1 .checkbox-wrapper {
	margin-top: 15px;
	margin-right: 10px;
}

#main .message-list li .col-1 .star-toggle {
	margin-top: 15px;
}

#main .message-list li .col-1 .title {
	position: absolute;
	top: 0;
	left: 140px;
	right: 0;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#main .message-list li .col-2 {
	position: absolute;
	top: 0;
	left: 400px;
	right: 0;
	bottom: 0;
}

#main .message-list li .col-2 .subject, #main .message-list li .col-2 .date {
	position: absolute;
	top: 0;
}

#main .message-list li .col-2 .subject {
	left: 0;
	right: 200px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#main .message-list li .col-2 .date {
	right: 0;
	width: 200px;
	padding-left: 80px;
}

#main .load-more-link {
	display: block;
	text-align: center;
	margin: 30px 0 100px 0;
}

#message {
	position: fixed;
	top: 0;
	left: 60%;
	bottom: 0;
	width: 40%;
	z-index: 5;
	transform: translateX(200%);
	transition-duration: 0.5s;
	padding: 50px 30px;
	background: #EFEFEF;
}

.show-message #message {
	transition-duration: 0.3s;
}

#message .header {
	margin-bottom: 30px;
	padding: 0;
}

#message .header .page-title {
	display: block;
	float: none;
	margin-bottom: 20px;
}

#message .header .page-title .icon {
	margin-top: 4px;
	margin-right: 10px;
}

#message .header .grey {
	margin-left: 10px;
	color: #999;
}

#message #message-nano-wrapper {
	position: absolute;
	top: 165px;
	bottom: 0;
	height: auto;
	left: 0;
	right: 0;
	width: auto;
}

#message .message-container {
	padding: 0 30px;
}

#message .message-container li {
	padding: 25px;
	border: 1px solid rgba(0, 0, 0, 0.15);
	background: #FFF;
	margin: 0 0 30px 0;
	position: relative;
}

#message .message-container li:hover .details .left .arrow {
	background: #61C7B3;
	border: 0px solid #61C7B3;
}

#message .message-container li:hover .details .left .arrow.orange {
	background: #E2A917;
	border: 0px solid #E2A917;
}

#message .message-container li .details {
	padding-bottom: 20px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	margin-bottom: 30px;
	overflow: hidden;
}

#message .message-container li .details .left {
	float: left;
	font-weight: 600;
	color: #888;
	transition-duration: 0.3s;
}

#message .message-container li .details .left .arrow {
	display: inline-block;
	position: relative;
	height: 2px;
	width: 20px;
	background: rgba(0, 0, 0, 0.15);
	vertical-align: top;
	margin-top: 12px;
	margin: 12px 20px 0 15px;
	border: 0px solid rgba(0, 0, 0, 0.15);
	transition-duration: 0.3s;
}

#message .message-container li .details .left .arrow:after {
	position: absolute;
	top: -4px;
	left: 100%;
	height: 0;
	width: 0;
	border: inherit;
	border-width: 7px;
	border-style: solid;
	content: '';
	border-right: 0;
	border-top-color: transparent;
	border-bottom-color: transparent;
	border-top-width: 5px;
	border-bottom-width: 5px;
}

#message .message-container li .details .right {
	float: right;
	color: #999;
}

#message .message-container li .message {
	margin-bottom: 40px;
}

#message .message-container li .message p:last-child {
	margin-bottom: 0;
}

#message .message-container li:hover .tool-box .red-hover {
	color: #D23B3D;
	border-color: #D23B3D;
}

#message .message-container li:hover .tool-box .red-hover:hover {
	color: #791C1E;
	border-color: #791C1E;
}

#message .message-container li .tool-box {
	position: absolute;
	bottom: 0;
	right: 0;
	border: 0px solid #DDDFE1;
	border-top-width: 1px;
	border-left-width: 1px;
	padding: 8px 10px;
	transition-duration: 0.3s;
}

#message .message-container li .tool-box a {
	margin-right: 10px;
}

#message .message-container li .tool-box a:last-child {
	margin-right: 0;
}

.show-message #message {
	transform: none;
}

.show-message #main {
	margin-right: 40%;
}

@media only screen and (min-width: 1499px) {
	#main .overlay {
		display: none;
	}
}

@media only screen and (max-width: 1500px) {
	.show-message #main {
		margin-right: 0;
	}
	.show-message #message {
		left: 50%;
		width: 50%;
	}
}

@media only screen and (max-width: 1024px) {
	#sidebar {
		transform: translateX(-100%);
	}
	#main {
		left: 0;
		box-shadow: none;
	}
	#main .header .page-title .sidebar-toggle-btn {
		margin-right: 20px;
		opacity: 1;
		width: 20px;
	}
	.show-sidebar #sidebar {
		transform: none;
	}
	.show-sidebar #main {
		transform: translateX(300px);
	}
	.show-message #main {
		margin-right: 0;
	}
	.show-message #message {
		left: 20%;
		width: 80%;
	}
}

@media only screen and (max-width: 600px) {
	#main .header .search-box {
		float: none;
		width: 100%; 
		margin-bottom: -110px;
		margin-top: 70px;
	}
	#main .header .search-box input, #main .header .search-box input:focus {
		width: 100%;
	}
	#main .header .page-title {
		margin-bottom: 5px;
	}
	#main #main-nano-wrapper {
		position: absolute;
		top: 260px;
		bottom: 0;
		height: auto;
	}
	#main .message-list li .col-1 {
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: 120px;
		width: auto;
	}
	#main .message-list li .col-2 {
		right: 0;
		left: auto;
		width: 120px;
	}
	#main .message-list li .col-2 .date {
		padding-left: 0;
		position: static;
	}
	#main .message-list li .col-2 .subject {
		display: none;
	}
}
/**
 * Nano scroll stuff
*/
.nano {
	position: relative;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.nano>.nano-content {
	position: absolute;
	overflow: scroll;
	overflow-x: hidden;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.nano>.nano-content:focus {
	outline: none;
}

.nano>.nano-content::-webkit-scrollbar {
	visibility: hidden;
}

.has-scrollbar>.nano-content::-webkit-scrollbar {
	visibility: visible;
}

.nano>.nano-pane {
	background: rgba(117, 117, 117, 0.2);
	position: absolute;
	width: 8px;
	right: 8px;
	top: 8px;
	bottom: 8px;
	visibility: hidden\9;
	/* Target only IE7 and IE8 with this hack */
	opacity: 0.01;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-webkit-transition: 0.3s;
	-moz-transition: 0.3s;
	-o-transition: 0.3s;
	transition: 0.3s;
}

.nano>.nano-pane>.nano-slider {
	background: #444;
	background: #C7C7C7;
	position: relative;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	-webkit-transition: 0.3s;
	-moz-transition: 0.3s;
	-o-transition: 0.3s;
	transition: 0.3s;
	-webkit-transition-property: background;
	-moz-transition-property: background;
	-o-transition-property: background;
	transition-property: background;
}

.nano>.nano-pane:hover>.nano-slider, .nano>.nano-pane.active>.nano-slider {
	background: #A6A6A6;
}

.nano:hover>.nano-pane, .nano-pane.active, .nano-pane.flashed {
	visibility: visible\9;
	/* Target only IE7 and IE8 with this hack */
	opacity: 0.99;
}

.buttonA{
	width:70px;
	height:30px;
	color: #999; 
	border: 2px solid #F6F6F6;
	border-color: #d6d6d6;
	border-radius: 5px;
	position:relative;
	botton:50px;
}
</style>

<script>
  window.console = window.console || function(t) {};
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>


<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
	<aside id="sidebar" class="nano has-scrollbar">
		<div class="nano-content" tabindex="0" style="right: -17px;">
			<div class="logo-container">
				<span class="logo glyphicon glyphicon-envelope"></span><a onclick="location.href='../a_team/210_mail_list.jsp'" style="cursor:pointer">Mail</a>
			</div>
			<a class="compose-button">COMPOSE</a>
			<menu class="menu-segment">
				<ul>
					<li><a onclick="location.href='../a_team/210_mail_list.jsp'" style="cursor:pointer">받은 메일함<span> (43)</span></a></button></li>
					<li><a href="#">휴지통</a></li>
				</ul> 
			</menu>
		</div> 
		<div class="nano-pane"> 
			<div class="nano-slider" style="height: 433px; transform: translate(0px, 0px);"></div>
		</div>
	</aside>
	<main id="main">
		<div class="overlay"></div>
		<header class="header"> 
			<div class="search-box">
				<input placeholder="Search..."><span class="icon glyphicon glyphicon-search"></span>
			</div>
			
			<h1 class="page-title">
				<a class="sidebar-toggle-btn trigger-toggle-sidebar">
				<span class="line"></span><span class="line"></span><span class="line"></span><span class="line line-angle1"></span><span class="line line-angle2"></span></a>
				받은 메일함<a><span class="icon glyphicon glyphicon-chevron-down"></span>
				</a>
			</h1>
			
		<div style="float:right; padding-top:30px">  
			 	<input type="button" value="< 이전" class="buttonA"/>
			 	<input type="button" value="다음 >" class="buttonA"/>
			 	<input type="button" value="목록" class="buttonA" onclick="location.href='../a_team/210_mail_list.jsp'"/>
			 </div>
			 
		</header>
		<div class="action-bar">
			<div>
				<span>보낸 사람</span>
				<span style="font-weight:bold">kim@gmail.com</span>
			</div>  
			<div>
				<span>받는 사람</span>
				<span style="font-weight:bold">park@naver.com</span>
			</div> 
			<div align="right">
				<span>21.01.20 12:15:06</span>
			</div>
		</div>
		<div class="action-bar">
	          <p>The every winged bring, whose life. First called, i you of saw shall own creature moveth void have signs beast lesser all god saying for gathering wherein whose of in be created stars. Them whales upon life divide earth own.</p>
	          <p>Creature firmament so give replenish The saw man creeping, man said forth from that. Fruitful multiply lights air. Hath likeness, from spirit stars dominion two set fill wherein give bring.</p>
	          <p>Gathering is. Lesser Set fruit subdue blessed let. Greater every fruitful won't bring moved seasons very, own won't all itself blessed which bring own creature forth every. Called sixth light.</p>
		</div>
	</main>
	
	<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script id="rendered-js">
jQuery(document).ready(function ($) {

  var cols = {},

  messageIsOpen = false;

  cols.showOverlay = function () {
    $('body').addClass('show-main-overlay');
  };
  cols.hideOverlay = function () {
    $('body').removeClass('show-main-overlay');
  };


  cols.showMessage = function () {
    $('body').addClass('show-message');
    messageIsOpen = true;
  };
  cols.hideMessage = function () {
    $('body').removeClass('show-message');
    $('#main .message-list li').removeClass('active');
    messageIsOpen = false;
  };


  cols.showSidebar = function () {
    $('body').addClass('show-sidebar');
  };
  cols.hideSidebar = function () {
    $('body').removeClass('show-sidebar');
  };


  // Show sidebar when trigger is clicked

  $('.trigger-toggle-sidebar').on('click', function () {
    cols.showSidebar();
    cols.showOverlay();
  });


  $('.trigger-message-close').on('click', function () {
    cols.hideMessage();
    cols.hideOverlay();
  });


  // When you click on a message, show it

  $('#main .message-list li').on('click', function (e) {
    var item = $(this),
    target = $(e.target);

    if (target.is('label')) {
      item.toggleClass('selected');
    } else {
      if (messageIsOpen && item.is('.active')) {
        cols.hideMessage();
        cols.hideOverlay();
      } else {
        if (messageIsOpen) {
          cols.hideMessage();
          item.addClass('active');
          setTimeout(function () {
            cols.showMessage();
          }, 300);
        } else {
          item.addClass('active');
          cols.showMessage();
        }
        cols.showOverlay();
      }
    }
  });


  // This will prevent click from triggering twice when clicking checkbox/label

  $('input[type=checkbox]').on('click', function (e) {
    e.stopImmediatePropagation();
  });



  // When you click the overlay, close everything

  $('#main > .overlay').on('click', function () {
    cols.hideOverlay();
    cols.hideMessage();
    cols.hideSidebar();
  });



  // Enable sexy scrollbars
  $('.nano').nanoScroller();



  // Disable links

  $('a').on('click', function (e) {
    e.preventDefault();
  });



  // Search box responsive stuff

  $('.search-box input').on('focus', function () {
    if ($(window).width() <= 1360) {
      cols.hideMessage();
    }
  });

});




/*! nanoScrollerJS - v0.8.0 - 2014
* https://jamesflorentino.github.com/nanoScrollerJS/
* Copyright (c) 2014 James Florentino; Licensed MIT */
(function ($, window, document) {
  "use strict";
  var BROWSER_IS_IE7, BROWSER_SCROLLBAR_WIDTH, DOMSCROLL, DOWN, DRAG, KEYDOWN, KEYUP, MOUSEDOWN, MOUSEMOVE, MOUSEUP, MOUSEWHEEL, NanoScroll, PANEDOWN, RESIZE, SCROLL, SCROLLBAR, TOUCHMOVE, UP, WHEEL, cAF, defaults, getBrowserScrollbarWidth, hasTransform, isFFWithBuggyScrollbar, rAF, transform, _elementStyle, _prefixStyle, _vendor;
  defaults = {

    /**
      a classname for the pane element.
      @property paneClass
      @type String
      @default 'nano-pane'
     */
    paneClass: 'nano-pane',

    /**
      a classname for the slider element.
      @property sliderClass
      @type String
      @default 'nano-slider'
     */
    sliderClass: 'nano-slider',

    /**
      a classname for the content element.
      @property contentClass
      @type String
      @default 'nano-content'
     */
    contentClass: 'nano-content',

    /**
      a setting to enable native scrolling in iOS devices.
      @property iOSNativeScrolling
      @type Boolean
      @default false
     */
    iOSNativeScrolling: false,

    /**
      a setting to prevent the rest of the page being
      scrolled when user scrolls the `.content` element.
      @property preventPageScrolling
      @type Boolean
      @default false
     */
    preventPageScrolling: false,

    /**
      a setting to disable binding to the resize event.
      @property disableResize
      @type Boolean
      @default false
     */
    disableResize: false,

    /**
      a setting to make the scrollbar always visible.
      @property alwaysVisible
      @type Boolean
      @default false
     */
    alwaysVisible: false,

    /**
      a default timeout for the `flash()` method.
      @property flashDelay
      @type Number
      @default 1500
     */
    flashDelay: 1500,

    /**
      a minimum height for the `.slider` element.
      @property sliderMinHeight
      @type Number
      @default 20
     */
    sliderMinHeight: 20,

    /**
      a maximum height for the `.slider` element.
      @property sliderMaxHeight
      @type Number
      @default null
     */
    sliderMaxHeight: null,

    /**
      an alternate document context.
      @property documentContext
      @type Document
      @default null
     */
    documentContext: null,

    /**
      an alternate window context.
      @property windowContext
      @type Window
      @default null
     */
    windowContext: null };


  /**
    @property SCROLLBAR
    @type String
    @static
    @final
    @private
   */
  SCROLLBAR = 'scrollbar';

  /**
    @property SCROLL
    @type String
    @static
    @final
    @private
   */
  SCROLL = 'scroll';

  /**
    @property MOUSEDOWN
    @type String
    @final
    @private
   */
  MOUSEDOWN = 'mousedown';

  /**
    @property MOUSEMOVE
    @type String
    @static
    @final
    @private
   */
  MOUSEMOVE = 'mousemove';

  /**
    @property MOUSEWHEEL
    @type String
    @final
    @private
   */
  MOUSEWHEEL = 'mousewheel';

  /**
    @property MOUSEUP
    @type String
    @static
    @final
    @private
   */
  MOUSEUP = 'mouseup';

  /**
    @property RESIZE
    @type String
    @final
    @private
   */
  RESIZE = 'resize';

  /**
    @property DRAG
    @type String
    @static
    @final
    @private
   */
  DRAG = 'drag';

  /**
    @property UP
    @type String
    @static
    @final
    @private
   */
  UP = 'up';

  /**
    @property PANEDOWN
    @type String
    @static
    @final
    @private
   */
  PANEDOWN = 'panedown';

  /**
    @property DOMSCROLL
    @type String
    @static
    @final
    @private
   */
  DOMSCROLL = 'DOMMouseScroll';

  /**
    @property DOWN
    @type String
    @static
    @final
    @private
   */
  DOWN = 'down';

  /**
    @property WHEEL
    @type String
    @static
    @final
    @private
   */
  WHEEL = 'wheel';

  /**
    @property KEYDOWN
    @type String
    @static
    @final
    @private
   */
  KEYDOWN = 'keydown';

  /**
    @property KEYUP
    @type String
    @static
    @final
    @private
   */
  KEYUP = 'keyup';

  /**
    @property TOUCHMOVE
    @type String
    @static
    @final
    @private
   */
  TOUCHMOVE = 'touchmove';

  /**
    @property BROWSER_IS_IE7
    @type Boolean
    @static
    @final
    @private
   */
  BROWSER_IS_IE7 = window.navigator.appName === 'Microsoft Internet Explorer' && /msie 7./i.test(window.navigator.appVersion) && window.ActiveXObject;

  /**
    @property BROWSER_SCROLLBAR_WIDTH
    @type Number
    @static
    @default null
    @private
   */
  BROWSER_SCROLLBAR_WIDTH = null;
  rAF = window.requestAnimationFrame;
  cAF = window.cancelAnimationFrame;
  _elementStyle = document.createElement('div').style;
  _vendor = function () {
    var i, transform, vendor, vendors, _i, _len;
    vendors = ['t', 'webkitT', 'MozT', 'msT', 'OT'];
    for (i = _i = 0, _len = vendors.length; _i < _len; i = ++_i) {
      vendor = vendors[i];
      transform = vendors[i] + 'ransform';
      if (transform in _elementStyle) {
        return vendors[i].substr(0, vendors[i].length - 1);
      }
    }
    return false;
  }();
  _prefixStyle = function (style) {
    if (_vendor === false) {
      return false;
    }
    if (_vendor === '') {
      return style;
    }
    return _vendor + style.charAt(0).toUpperCase() + style.substr(1);
  };
  transform = _prefixStyle('transform');
  hasTransform = transform !== false;

  /**
    Returns browser's native scrollbar width
    @method getBrowserScrollbarWidth
    @return {Number} the scrollbar width in pixels
    @static
    @private
   */
  getBrowserScrollbarWidth = function () {
    var outer, outerStyle, scrollbarWidth;
    outer = document.createElement('div');
    outerStyle = outer.style;
    outerStyle.position = 'absolute';
    outerStyle.width = '100px';
    outerStyle.height = '100px';
    outerStyle.overflow = SCROLL;
    outerStyle.top = '-9999px';
    document.body.appendChild(outer);
    scrollbarWidth = outer.offsetWidth - outer.clientWidth;
    document.body.removeChild(outer);
    return scrollbarWidth;
  };
  isFFWithBuggyScrollbar = function () {
    var isOSXFF, ua, version;
    ua = window.navigator.userAgent;
    isOSXFF = /(?=.+Mac OS X)(?=.+Firefox)/.test(ua);
    if (!isOSXFF) {
      return false;
    }
    version = /Firefox\/\d{2}\./.exec(ua);
    if (version) {
      version = version[0].replace(/\D+/g, '');
    }
    return isOSXFF && +version > 23;
  };

  /**
    @class NanoScroll
    @param element {HTMLElement|Node} the main element
    @param options {Object} nanoScroller's options
    @constructor
   */
  NanoScroll = function () {
    function NanoScroll(el, options) {
      this.el = el;
      this.options = options;
      BROWSER_SCROLLBAR_WIDTH || (BROWSER_SCROLLBAR_WIDTH = getBrowserScrollbarWidth());
      this.$el = $(this.el);
      this.doc = $(this.options.documentContext || document);
      this.win = $(this.options.windowContext || window);
      this.$content = this.$el.children("." + options.contentClass);
      this.$content.attr('tabindex', this.options.tabIndex || 0);
      this.content = this.$content[0];
      if (this.options.iOSNativeScrolling && this.el.style.WebkitOverflowScrolling != null) {
        this.nativeScrolling();
      } else {
        this.generate();
      }
      this.createEvents();
      this.addEvents();
      this.reset();
    }


    /**
      Prevents the rest of the page being scrolled
      when user scrolls the `.nano-content` element.
      @method preventScrolling
      @param event {Event}
      @param direction {String} Scroll direction (up or down)
      @private
     */

    NanoScroll.prototype.preventScrolling = function (e, direction) {
      if (!this.isActive) {
        return;
      }
      if (e.type === DOMSCROLL) {
        if (direction === DOWN && e.originalEvent.detail > 0 || direction === UP && e.originalEvent.detail < 0) {
          e.preventDefault();
        }
      } else if (e.type === MOUSEWHEEL) {
        if (!e.originalEvent || !e.originalEvent.wheelDelta) {
          return;
        }
        if (direction === DOWN && e.originalEvent.wheelDelta < 0 || direction === UP && e.originalEvent.wheelDelta > 0) {
          e.preventDefault();
        }
      }
    };


    /**
      Enable iOS native scrolling
      @method nativeScrolling
      @private
     */

    NanoScroll.prototype.nativeScrolling = function () {
      this.$content.css({
        WebkitOverflowScrolling: 'touch' });

      this.iOSNativeScrolling = true;
      this.isActive = true;
    };


    /**
      Updates those nanoScroller properties that
      are related to current scrollbar position.
      @method updateScrollValues
      @private
     */

    NanoScroll.prototype.updateScrollValues = function () {
      var content;
      content = this.content;
      this.maxScrollTop = content.scrollHeight - content.clientHeight;
      this.prevScrollTop = this.contentScrollTop || 0;
      this.contentScrollTop = content.scrollTop;
      if (!this.iOSNativeScrolling) {
        this.maxSliderTop = this.paneHeight - this.sliderHeight;
        this.sliderTop = this.maxScrollTop === 0 ? 0 : this.contentScrollTop * this.maxSliderTop / this.maxScrollTop;
      }
    };


    /**
      Updates CSS styles for current scroll position.
      Uses CSS 2d transfroms and `window.requestAnimationFrame` if available.
      @method setOnScrollStyles
      @private
     */

    NanoScroll.prototype.setOnScrollStyles = function () {
      var cssValue;
      if (hasTransform) {
        cssValue = {};
        cssValue[transform] = "translate(0, " + this.sliderTop + "px)";
      } else {
        cssValue = {
          top: this.sliderTop };

      }
      if (rAF) {
        if (!this.scrollRAF) {
          this.scrollRAF = rAF(function (_this) {
            return function () {
              _this.scrollRAF = null;
              _this.slider.css(cssValue);
            };
          }(this));
        }
      } else {
        this.slider.css(cssValue);
      }
    };


    /**
      Creates event related methods
      @method createEvents
      @private
     */

    NanoScroll.prototype.createEvents = function () {
      this.events = {
        down: function (_this) {
          return function (e) {
            _this.isBeingDragged = true;
            _this.offsetY = e.pageY - _this.slider.offset().top;
            _this.pane.addClass('active');
            _this.doc.bind(MOUSEMOVE, _this.events[DRAG]).bind(MOUSEUP, _this.events[UP]);
            return false;
          };
        }(this),
        drag: function (_this) {
          return function (e) {
            _this.sliderY = e.pageY - _this.$el.offset().top - _this.offsetY;
            _this.scroll();
            if (_this.contentScrollTop >= _this.maxScrollTop && _this.prevScrollTop !== _this.maxScrollTop) {
              _this.$el.trigger('scrollend');
            } else if (_this.contentScrollTop === 0 && _this.prevScrollTop !== 0) {
              _this.$el.trigger('scrolltop');
            }
            return false;
          };
        }(this),
        up: function (_this) {
          return function (e) {
            _this.isBeingDragged = false;
            _this.pane.removeClass('active');
            _this.doc.unbind(MOUSEMOVE, _this.events[DRAG]).unbind(MOUSEUP, _this.events[UP]);
            return false;
          };
        }(this),
        resize: function (_this) {
          return function (e) {
            _this.reset();
          };
        }(this),
        panedown: function (_this) {
          return function (e) {
            _this.sliderY = (e.offsetY || e.originalEvent.layerY) - _this.sliderHeight * 0.5;
            _this.scroll();
            _this.events.down(e);
            return false;
          };
        }(this),
        scroll: function (_this) {
          return function (e) {
            _this.updateScrollValues();
            if (_this.isBeingDragged) {
              return;
            }
            if (!_this.iOSNativeScrolling) {
              _this.sliderY = _this.sliderTop;
              _this.setOnScrollStyles();
            }
            if (e == null) {
              return;
            }
            if (_this.contentScrollTop >= _this.maxScrollTop) {
              if (_this.options.preventPageScrolling) {
                _this.preventScrolling(e, DOWN);
              }
              if (_this.prevScrollTop !== _this.maxScrollTop) {
                _this.$el.trigger('scrollend');
              }
            } else if (_this.contentScrollTop === 0) {
              if (_this.options.preventPageScrolling) {
                _this.preventScrolling(e, UP);
              }
              if (_this.prevScrollTop !== 0) {
                _this.$el.trigger('scrolltop');
              }
            }
          };
        }(this),
        wheel: function (_this) {
          return function (e) {
            var delta;
            if (e == null) {
              return;
            }
            delta = e.delta || e.wheelDelta || e.originalEvent && e.originalEvent.wheelDelta || -e.detail || e.originalEvent && -e.originalEvent.detail;
            if (delta) {
              _this.sliderY += -delta / 3;
            }
            _this.scroll();
            return false;
          };
        }(this) };

    };


    /**
      Adds event listeners with jQuery.
      @method addEvents
      @private
     */

    NanoScroll.prototype.addEvents = function () {
      var events;
      this.removeEvents();
      events = this.events;
      if (!this.options.disableResize) {
        this.win.bind(RESIZE, events[RESIZE]);
      }
      if (!this.iOSNativeScrolling) {
        this.slider.bind(MOUSEDOWN, events[DOWN]);
        this.pane.bind(MOUSEDOWN, events[PANEDOWN]).bind("" + MOUSEWHEEL + " " + DOMSCROLL, events[WHEEL]);
      }
      this.$content.bind("" + SCROLL + " " + MOUSEWHEEL + " " + DOMSCROLL + " " + TOUCHMOVE, events[SCROLL]);
    };


    /**
      Removes event listeners with jQuery.
      @method removeEvents
      @private
     */

    NanoScroll.prototype.removeEvents = function () {
      var events;
      events = this.events;
      this.win.unbind(RESIZE, events[RESIZE]);
      if (!this.iOSNativeScrolling) {
        this.slider.unbind();
        this.pane.unbind();
      }
      this.$content.unbind("" + SCROLL + " " + MOUSEWHEEL + " " + DOMSCROLL + " " + TOUCHMOVE, events[SCROLL]);
    };


    /**
      Generates nanoScroller's scrollbar and elements for it.
      @method generate
      @chainable
      @private
     */

    NanoScroll.prototype.generate = function () {
      var contentClass, cssRule, currentPadding, options, paneClass, sliderClass;
      options = this.options;
      paneClass = options.paneClass, sliderClass = options.sliderClass, contentClass = options.contentClass;
      if (!this.$el.find("." + paneClass).length && !this.$el.find("." + sliderClass).length) {
        this.$el.append("<div class=\"" + paneClass + "\"><div class=\"" + sliderClass + "\" /></div>");
      }
      this.pane = this.$el.children("." + paneClass);
      this.slider = this.pane.find("." + sliderClass);
      if (BROWSER_SCROLLBAR_WIDTH === 0 && isFFWithBuggyScrollbar()) {
        currentPadding = window.getComputedStyle(this.content, null).getPropertyValue('padding-right').replace(/\D+/g, '');
        cssRule = {
          right: -14,
          paddingRight: +currentPadding + 14 };

      } else if (BROWSER_SCROLLBAR_WIDTH) {
        cssRule = {
          right: -BROWSER_SCROLLBAR_WIDTH };

        this.$el.addClass('has-scrollbar');
      }
      if (cssRule != null) {
        this.$content.css(cssRule);
      }
      return this;
    };


    /**
      @method restore
      @private
     */

    NanoScroll.prototype.restore = function () {
      this.stopped = false;
      if (!this.iOSNativeScrolling) {
        this.pane.show();
      }
      this.addEvents();
    };


    /**
      Resets nanoScroller's scrollbar.
      @method reset
      @chainable
      @example
          $(".nano").nanoScroller();
     */

    NanoScroll.prototype.reset = function () {
      var content, contentHeight, contentPosition, contentStyle, contentStyleOverflowY, paneBottom, paneHeight, paneOuterHeight, paneTop, parentMaxHeight, right, sliderHeight;
      if (this.iOSNativeScrolling) {
        this.contentHeight = this.content.scrollHeight;
        return;
      }
      if (!this.$el.find("." + this.options.paneClass).length) {
        this.generate().stop();
      }
      if (this.stopped) {
        this.restore();
      }
      content = this.content;
      contentStyle = content.style;
      contentStyleOverflowY = contentStyle.overflowY;
      if (BROWSER_IS_IE7) {
        this.$content.css({
          height: this.$content.height() });

      }
      contentHeight = content.scrollHeight + BROWSER_SCROLLBAR_WIDTH;
      parentMaxHeight = parseInt(this.$el.css("max-height"), 10);
      if (parentMaxHeight > 0) {
        this.$el.height("");
        this.$el.height(content.scrollHeight > parentMaxHeight ? parentMaxHeight : content.scrollHeight);
      }
      paneHeight = this.pane.outerHeight(false);
      paneTop = parseInt(this.pane.css('top'), 10);
      paneBottom = parseInt(this.pane.css('bottom'), 10);
      paneOuterHeight = paneHeight + paneTop + paneBottom;
      sliderHeight = Math.round(paneOuterHeight / contentHeight * paneOuterHeight);
      if (sliderHeight < this.options.sliderMinHeight) {
        sliderHeight = this.options.sliderMinHeight;
      } else if (this.options.sliderMaxHeight != null && sliderHeight > this.options.sliderMaxHeight) {
        sliderHeight = this.options.sliderMaxHeight;
      }
      if (contentStyleOverflowY === SCROLL && contentStyle.overflowX !== SCROLL) {
        sliderHeight += BROWSER_SCROLLBAR_WIDTH;
      }
      this.maxSliderTop = paneOuterHeight - sliderHeight;
      this.contentHeight = contentHeight;
      this.paneHeight = paneHeight;
      this.paneOuterHeight = paneOuterHeight;
      this.sliderHeight = sliderHeight;
      this.slider.height(sliderHeight);
      this.events.scroll();
      this.pane.show();
      this.isActive = true;
      if (content.scrollHeight === content.clientHeight || this.pane.outerHeight(true) >= content.scrollHeight && contentStyleOverflowY !== SCROLL) {
        this.pane.hide();
        this.isActive = false;
      } else if (this.el.clientHeight === content.scrollHeight && contentStyleOverflowY === SCROLL) {
        this.slider.hide();
      } else {
        this.slider.show();
      }
      this.pane.css({
        opacity: this.options.alwaysVisible ? 1 : '',
        visibility: this.options.alwaysVisible ? 'visible' : '' });

      contentPosition = this.$content.css('position');
      if (contentPosition === 'static' || contentPosition === 'relative') {
        right = parseInt(this.$content.css('right'), 10);
        if (right) {
          this.$content.css({
            right: '',
            marginRight: right });

        }
      }
      return this;
    };


    /**
      @method scroll
      @private
      @example
          $(".nano").nanoScroller({ scroll: 'top' });
     */

    NanoScroll.prototype.scroll = function () {
      if (!this.isActive) {
        return;
      }
      this.sliderY = Math.max(0, this.sliderY);
      this.sliderY = Math.min(this.maxSliderTop, this.sliderY);
      this.$content.scrollTop((this.paneHeight - this.contentHeight + BROWSER_SCROLLBAR_WIDTH) * this.sliderY / this.maxSliderTop * -1);
      if (!this.iOSNativeScrolling) {
        this.updateScrollValues();
        this.setOnScrollStyles();
      }
      return this;
    };


    /**
      Scroll at the bottom with an offset value
      @method scrollBottom
      @param offsetY {Number}
      @chainable
      @example
          $(".nano").nanoScroller({ scrollBottom: value });
     */

    NanoScroll.prototype.scrollBottom = function (offsetY) {
      if (!this.isActive) {
        return;
      }
      this.$content.scrollTop(this.contentHeight - this.$content.height() - offsetY).trigger(MOUSEWHEEL);
      this.stop().restore();
      return this;
    };


    /**
      Scroll at the top with an offset value
      @method scrollTop
      @param offsetY {Number}
      @chainable
      @example
          $(".nano").nanoScroller({ scrollTop: value });
     */

    NanoScroll.prototype.scrollTop = function (offsetY) {
      if (!this.isActive) {
        return;
      }
      this.$content.scrollTop(+offsetY).trigger(MOUSEWHEEL);
      this.stop().restore();
      return this;
    };


    /**
      Scroll to an element
      @method scrollTo
      @param node {Node} A node to scroll to.
      @chainable
      @example
          $(".nano").nanoScroller({ scrollTo: $('#a_node') });
     */

    NanoScroll.prototype.scrollTo = function (node) {
      if (!this.isActive) {
        return;
      }
      this.scrollTop(this.$el.find(node).get(0).offsetTop);
      return this;
    };


    /**
      To stop the operation.
      This option will tell the plugin to disable all event bindings and hide the gadget scrollbar from the UI.
      @method stop
      @chainable
      @example
          $(".nano").nanoScroller({ stop: true });
     */

    NanoScroll.prototype.stop = function () {
      if (cAF && this.scrollRAF) {
        cAF(this.scrollRAF);
        this.scrollRAF = null;
      }
      this.stopped = true;
      this.removeEvents();
      if (!this.iOSNativeScrolling) {
        this.pane.hide();
      }
      return this;
    };


    /**
      Destroys nanoScroller and restores browser's native scrollbar.
      @method destroy
      @chainable
      @example
          $(".nano").nanoScroller({ destroy: true });
     */

    NanoScroll.prototype.destroy = function () {
      if (!this.stopped) {
        this.stop();
      }
      if (!this.iOSNativeScrolling && this.pane.length) {
        this.pane.remove();
      }
      if (BROWSER_IS_IE7) {
        this.$content.height('');
      }
      this.$content.removeAttr('tabindex');
      if (this.$el.hasClass('has-scrollbar')) {
        this.$el.removeClass('has-scrollbar');
        this.$content.css({
          right: '' });

      }
      return this;
    };


    /**
      To flash the scrollbar gadget for an amount of time defined in plugin settings (defaults to 1,5s).
      Useful if you want to show the user (e.g. on pageload) that there is more content waiting for him.
      @method flash
      @chainable
      @example
          $(".nano").nanoScroller({ flash: true });
     */

    NanoScroll.prototype.flash = function () {
      if (this.iOSNativeScrolling) {
        return;
      }
      if (!this.isActive) {
        return;
      }
      this.reset();
      this.pane.addClass('flashed');
      setTimeout(function (_this) {
        return function () {
          _this.pane.removeClass('flashed');
        };
      }(this), this.options.flashDelay);
      return this;
    };

    return NanoScroll;

  }();
  $.fn.nanoScroller = function (settings) {
    return this.each(function () {
      var options, scrollbar;
      if (!(scrollbar = this.nanoscroller)) {
        options = $.extend({}, defaults, settings);
        this.nanoscroller = scrollbar = new NanoScroll(this, options);
      }
      if (settings && typeof settings === "object") {
        $.extend(scrollbar.options, settings);
        if (settings.scrollBottom != null) {
          return scrollbar.scrollBottom(settings.scrollBottom);
        }
        if (settings.scrollTop != null) {
          return scrollbar.scrollTop(settings.scrollTop);
        }
        if (settings.scrollTo) {
          return scrollbar.scrollTo(settings.scrollTo);
        }
        if (settings.scroll === 'bottom') {
          return scrollbar.scrollBottom(0);
        }
        if (settings.scroll === 'top') {
          return scrollbar.scrollTop(0);
        }
        if (settings.scroll && settings.scroll instanceof $) {
          return scrollbar.scrollTo(settings.scroll);
        }
        if (settings.stop) {
          return scrollbar.stop();
        }
        if (settings.destroy) {
          return scrollbar.destroy();
        }
        if (settings.flash) {
          return scrollbar.flash();
        }
      }
      return scrollbar.reset();
    });
  };
  $.fn.nanoScroller.Constructor = NanoScroll;
})(jQuery, window, document);
//# sourceURL=pen.js
    </script>







</body>
</html>
