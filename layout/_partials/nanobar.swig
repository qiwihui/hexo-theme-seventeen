<script type="text/javascript" src="{{ asset('js/nanobar.js') }}"></script>
<script type="text/javascript">
    /* Initial NanoBar */
    var nanobar = new Nanobar({
        bg: "{{ nanobarThemeColor(theme.color) }}",
        target: document.getElementById("pageframe"),
        id: "inb"
    });
</script>
