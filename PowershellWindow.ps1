Add-Type -AssemblyName System.Windows.Forms

$FormObject = [System.Windows.Forms.Form]
$LabelObject = [System.Windows.Forms.Label]

$HelloWorldForm = New-Object $FormObject
$HelloWorldForm.ClientSize = '500,300'
$HelloWorldForm.Text = 'Hello World!'
$HelloWorldForm.BackColor = "#00FF00"

# Display the form
$HelloWorldForm.ShowDialog()

# Clean up
$HelloWorldForm.Dispose()