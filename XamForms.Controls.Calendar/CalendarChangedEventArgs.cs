using System;

namespace XamForms.Controls
{
    public class CalendarChangedEventArgs : EventArgs {
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }
}

