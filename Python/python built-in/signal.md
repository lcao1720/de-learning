```
import signal
```

#### [`signal`](https://docs.python.org/3/library/signal.html#module-signal "signal: Set handlers for asynchronous events.") — Set handlers for asynchronous events

```
signal.SIGINT
```

- Interrupt from keyboard (CTRL + C).

	Default action is to raise [`KeyboardInterrupt`](https://docs.python.org/3/library/exceptions.html#KeyboardInterrupt "KeyboardInterrupt").

```
signal.SIGKILL
```

- Kill signal. It cannot be caught, blocked, or ignored.