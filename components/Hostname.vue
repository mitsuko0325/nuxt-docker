<template>
    <div>
        <h1>{{ message }}</h1>
        <h2>{{ getHostname }}</h2>
        <h2>{{ get }}</h2>
    </div>
</template>

<script>
export default {
    data: () => {
        return {
            message: "Hello Nuxt and Docker",
            hostname: "",
        }
    },
    computed: {
        getHostname: function() {
            var os = require('os')
            return os.hostname()
        }
    },
}
</script>