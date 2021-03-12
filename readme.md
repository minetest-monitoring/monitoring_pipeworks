
Monitoring and management extensions for pipeworks

Base-mod: https://github.com/minetest-monitoring/monitoring

# Features

* Tubed item management (flushing)
* Enable and disable pipeworks at runtime
* Item expiration (tubed items only stay 10 minutes in the pipes)
* Item injection limit per mapchunk

# Chatcommands

* **/pipeworks_flush** flushes (removes) all items in the tubes
* **/pipeworks_stats** shows the item count
* **/pipeworks_enable** enables the pipeworks mod at runtime
* **/pipeworks_disable** disables the pieworks mod at runtime
* **/pipeworks_check_limit** check the injection limits on the current mapchunk
* **/pipeworks_limit_stats** shows the chunk with the highest injection rate

# License

MIT
