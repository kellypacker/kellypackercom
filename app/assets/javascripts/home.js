$(function() {
    // addEventsToVideos();
});

function onPlayerStateChange() {
    console.log("state changed");
}

function onPlayerReady() {
    console.log("READY");
}

// This code loads the IFrame Player API code asynchronously.
// var tag = document.createElement('script');
// tag.src = "https://www.youtube.com/iframe_api";
// var firstScriptTag = document.getElementsByTagName('script')[0];
// firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
console.log($('iframe:first').attr('id'));
var testID = $('iframe:first').attr('id');
$('iframe').each(function() {
    var src = $(this).attr('src');
    console.log(src + '&enablejsapi=1&origin=http://selc.test');
    // $(this).attr('src', src + '&enablejsapi=1&origin=http://www.kellypacker.com');
});
// This function takes the existing <iframe> (and YouTube player)
// with id 'player1' and adds an event listener for state changes.
var player;
function onYouTubeIframeAPIReady() {
    console.log("ready");
    player = new YT.Player('player1', {
        events: {
            'onStateChange': onPlayerStateChange
        }
    });
}
// // 2. This code loads the IFrame Player API code asynchronously.
// var tag = document.createElement('script');
//
// tag.src = "https://www.youtube.com/iframe_api";
// var firstScriptTag = document.getElementsByTagName('script')[0];
// firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
//
// function onYouTubeIframeAPIReady() {
//     player = new YT.Player('player', {
//         height: '390',
//         width: '640',
//         videoId: 'REJybt3l-LY',
//         events: {
//             'onReady': onPlayerReady,
//             'onStateChange': onPlayerStateChange
//         }
//     });
// }
