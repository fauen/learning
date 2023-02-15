Add-Type -AssemblyName System.Windows.Forms

$FormObject = [System.Windows.Forms.Form]
$LabelObject = [System.Windows.Forms.Label]

$HelloWorldForm = New-Object $FormObject
$HelloWorldForm.ClientSize = '500,300'
$HelloWorldForm.Text = 'Hello World!'
$HelloWorldForm.BackColor = "#00FF00"

$LblTitle = New-Object $LabelObject
$LblTitle.Text = 'Hello World!'
$LblTitle.AutoSize = $true
$LblTitle.Font = 'Arial,24,style=Bold'
$LblTitle.Location = New-Object System.Drawing.Point(20,20)

$HelloWorldForm.Controls.AddRange(@($LblTitle))

# Display the form
$HelloWorldForm.ShowDialog()

# Clean up
$HelloWorldForm.Dispose()