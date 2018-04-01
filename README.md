# Mocking Server

**An attempt to build a server that would show current stats about incoming requests, while allowing configurable responses

The configuration should include different status codes, timeouts, as well as transformations of input params, finally randomisation of the responses.
This is to emulate a real-life service with all its possible flaws.

atm (2018-04-01) it has implemented a simple templating function that takes a text file and populates placeholders according to a provided key-value map, and servers static CSS file from a specific path. All other paths are handled by the "dashboard" HTML for now.