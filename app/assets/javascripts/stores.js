//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
    $('#store_semester_id').change(function(){
        var selectedOption = $(this).find("option:selected");
      //  alert(selectedOption.val());
        $.ajax({
            method: "GET",
            url: "/semesters/"+selectedOption.val()+"/getCourse",
            data: { id: selectedOption.val() }
        })
            .success(function( data ) {
                console.log(data);
            });
    });
    $(document).on('change','[course-id]',function(){
        var semesterId = $(".semester-select option:selected").val();
        var courseId = $(this).attr('course-id');
        if($(this).prop('checked')){
            $.ajax({
                method: "POST",
                url: "/stores/addCourse",
                data: { id: courseId, semester_id: semesterId }
            })
            .success(function( data ) {
                console.log(data);
            });
        }else{
            $.ajax({
                method: "DELETE",
                url: "/stores/deleteCourse",
                data: { id: courseId, semester_id: semesterId }
            })
            .success(function( data ) {
                console.log(data);
            });
        }
    });
});