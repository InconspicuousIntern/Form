Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$firstName = $null

#FUNCTIONS
function Submit([ref]$firstName){ 
    $firstName.value =  $txtFirstName.Text 
    $MiddleInit = $txtMiddleInitial.Text 
    $LastName = $txtLastName.Text 
    $JobTitle = $cboJobTitle.Text 
    $CSC = $cboCSC.Text 
    $RequestType = $grpRequestType.Controls.checked 
    $EmployeeNum = $txtEmployeeNo.Text 
    $PhoneExt = $txtPhoneExt.Text 
    $CompAssetNum = $txtCompAssetNo.Text 
    $Printer =  $txtDefaultPrint.Text
    $Email =  $chkEmail.Checked 
    $MobileEmail = $chkMobileEmail.Checked 
    $SalesLogix = $chkSaleslogix.Checked 
    $DocuSec = $grpDocuwareSec.Controls.checked 
    $SXSec = $grpSXSec.Controls.checked 
    $SXSecAdd =  $grpSXSecAdd.Controls.checked
    $VendSec = $grpVendorSec.Controls.checked  
} 

#region begin GUI{ 
#region Formatting
$NewUserForm                     = New-Object system.Windows.Forms.Form
$NewUserForm.ClientSize          = '750,1400'
$NewUserForm.text                = "User Account Request"
$NewUserForm.BackColor           = "#ffffff"
$NewUserForm.TopMost             = $true
$NewUserForm.AutoScroll          = $true

$pnlBackground                   = New-Object system.Windows.Forms.Panel
$pnlBackground.height            = 1300
$pnlBackground.width             = 500
$pnlBackground.BackColor         = "#f1f6fd"
$pnlBackground.location          = New-Object System.Drawing.Point(240,0)
#endregion Formatting

#region Text
$txtFirstName                    = New-Object system.Windows.Forms.TextBox
$txtFirstName.multiline          = $false
$txtFirstName.width              = 250
$txtFirstName.height             = 20
$txtFirstName.location           = New-Object System.Drawing.Point(249,19)
$txtFirstName.Font               = 'Microsoft Sans Serif,10'

$txtLastName                     = New-Object system.Windows.Forms.TextBox
$txtLastName.multiline           = $false
$txtLastName.width               = 250
$txtLastName.height              = 20
$txtLastName.location            = New-Object System.Drawing.Point(250,80)
$txtLastName.Font                = 'Microsoft Sans Serif,10'

$txtMiddleInitial                = New-Object system.Windows.Forms.TextBox
$txtMiddleInitial.multiline      = $false
$txtMiddleInitial.width          = 25
$txtMiddleInitial.height         = 20
$txtMiddleInitial.MaxLength      = 1
$txtMiddleInitial.location       = New-Object System.Drawing.Point(250,50)
$txtMiddleInitial.Font           = 'Microsoft Sans Serif,10'

$txtEmployeeNo                   = New-Object system.Windows.Forms.TextBox
$txtEmployeeNo.multiline         = $false
$txtEmployeeNo.width             = 100
$txtEmployeeNo.height            = 20
$txtEmployeeNo.location          = New-Object System.Drawing.Point(250,250)
$txtEmployeeNo.Font              = 'Microsoft Sans Serif,10'
$txtEmployeeNo.ForeColor         = ""
$txtEmployeeNo.MaxLength         = 5

$txtPhoneExt                     = New-Object system.Windows.Forms.TextBox
$txtPhoneExt.multiline           = $false
$txtPhoneExt.width               = 100
$txtPhoneExt.height              = 20
$txtPhoneExt.location            = New-Object System.Drawing.Point(250,280)
$txtPhoneExt.Font                = 'Microsoft Sans Serif,10'
$txtPhoneExt.MaxLength           = 5

$txtCompAssetNo                  = New-Object system.Windows.Forms.TextBox
$txtCompAssetNo.multiline        = $false
$txtCompAssetNo.width            = 100
$txtCompAssetNo.height           = 20
$txtCompAssetNo.location         = New-Object System.Drawing.Point(250,310)
$txtCompAssetNo.Font             = 'Microsoft Sans Serif,10'
$txtCompAssetNo.MaxLength        = 5

$txtDefaultPrint                 = New-Object system.Windows.Forms.TextBox
$txtDefaultPrint.multiline       = $false
$txtDefaultPrint.width           = 250
$txtDefaultPrint.height          = 20
$txtDefaultPrint.location        = New-Object System.Drawing.Point(250,340)
$txtDefaultPrint.Font            = 'Microsoft Sans Serif,10'
#endregion Text

#region Labels
$lblFirstName                    = New-Object system.Windows.Forms.Label
$lblFirstName.text               = "First Name*"
$lblFirstName.AutoSize           = $true
$lblFirstName.width              = 25
$lblFirstName.height             = 10
$lblFirstName.location           = New-Object System.Drawing.Point(10,20)
$lblFirstName.Font               = 'Microsoft Sans Serif,10'

$lblMiddleInitial                = New-Object system.Windows.Forms.Label
$lblMiddleInitial.text           = "Middle Initial*"
$lblMiddleInitial.AutoSize       = $true
$lblMiddleInitial.width          = 25
$lblMiddleInitial.height         = 10
$lblMiddleInitial.location       = New-Object System.Drawing.Point(10,50)
$lblMiddleInitial.Font           = 'Microsoft Sans Serif,10'

$lblLastName                     = New-Object system.Windows.Forms.Label
$lblLastName.text                = "Last Name*"
$lblLastName.AutoSize            = $true
$lblLastName.width               = 25
$lblLastName.height              = 10
$lblLastName.location            = New-Object System.Drawing.Point(10,80)
$lblLastName.Font                = 'Microsoft Sans Serif,10'

$lblJobTitle                     = New-Object system.Windows.Forms.Label
$lblJobTitle.text                = "Job Title*"
$lblJobTitle.AutoSize            = $true
$lblJobTitle.width               = 25
$lblJobTitle.height              = 10
$lblJobTitle.location            = New-Object System.Drawing.Point(10,110)
$lblJobTitle.Font                = 'Microsoft Sans Serif,10'

$lblCSC                          = New-Object system.Windows.Forms.Label
$lblCSC.text                     = "CSC*"
$lblCSC.AutoSize                 = $true
$lblCSC.width                    = 25
$lblCSC.height                   = 10
$lblCSC.location                 = New-Object System.Drawing.Point(10,140)
$lblCSC.Font                     = 'Microsoft Sans Serif,10'

$lblRequestType                  = New-Object system.Windows.Forms.Label
$lblRequestType.text             = "Request Type*"
$lblRequestType.AutoSize         = $true
$lblRequestType.width            = 25
$lblRequestType.height           = 10
$lblRequestType.location         = New-Object System.Drawing.Point(10,170)
$lblRequestType.Font             = 'Microsoft Sans Serif,10'

$lblEmpNo                        = New-Object system.Windows.Forms.Label
$lblEmpNo.text                   = "Employee Number"
$lblEmpNo.AutoSize               = $true
$lblEmpNo.width                  = 25
$lblEmpNo.height                 = 10
$lblEmpNo.location               = New-Object System.Drawing.Point(10,250)
$lblEmpNo.Font                   = 'Microsoft Sans Serif,10'

$lblPhoneExt                     = New-Object system.Windows.Forms.Label
$lblPhoneExt.text                = "Phone Extension"
$lblPhoneExt.AutoSize            = $true
$lblPhoneExt.width               = 25
$lblPhoneExt.height              = 10
$lblPhoneExt.location            = New-Object System.Drawing.Point(10,280)
$lblPhoneExt.Font                = 'Microsoft Sans Serif,10'

$lblCompAssetNo                  = New-Object system.Windows.Forms.Label
$lblCompAssetNo.text             = "Computer Asset Number"
$lblCompAssetNo.AutoSize         = $true
$lblCompAssetNo.width            = 25
$lblCompAssetNo.height           = 10
$lblCompAssetNo.location         = New-Object System.Drawing.Point(10,310)
$lblCompAssetNo.Font             = 'Microsoft Sans Serif,10'

$lblDefaultPrint                 = New-Object system.Windows.Forms.Label
$lblDefaultPrint.text            = "Default Printer"
$lblDefaultPrint.AutoSize        = $true
$lblDefaultPrint.width           = 25
$lblDefaultPrint.height          = 10
$lblDefaultPrint.location        = New-Object System.Drawing.Point(10,340)
$lblDefaultPrint.Font            = 'Microsoft Sans Serif,10'

$lblEmail                        = New-Object system.Windows.Forms.Label
$lblEmail.text                   = "Email"
$lblEmail.AutoSize               = $true
$lblEmail.width                  = 25
$lblEmail.height                 = 10
$lblEmail.location               = New-Object System.Drawing.Point(10,370)
$lblEmail.Font                   = 'Microsoft Sans Serif,10'

$lblMobileEmail                  = New-Object system.Windows.Forms.Label
$lblMobileEmail.text             = "Mobile Email"
$lblMobileEmail.AutoSize         = $true
$lblMobileEmail.width            = 25
$lblMobileEmail.height           = 10
$lblMobileEmail.location         = New-Object System.Drawing.Point(10,400)
$lblMobileEmail.Font             = 'Microsoft Sans Serif,10'

$lblSaleslogix                   = New-Object system.Windows.Forms.Label
$lblSaleslogix.text              = "Saleslogix User"
$lblSaleslogix.AutoSize          = $true
$lblSaleslogix.width             = 25
$lblSaleslogix.height            = 10
$lblSaleslogix.location          = New-Object System.Drawing.Point(10,430)
$lblSaleslogix.Font              = 'Microsoft Sans Serif,10'

$lblDocSec                       = New-Object system.Windows.Forms.Label
$lblDocSec.text                  = "DocuWare Security"
$lblDocSec.AutoSize              = $true
$lblDocSec.width                 = 25
$lblDocSec.height                = 10
$lblDocSec.location              = New-Object System.Drawing.Point(10,460)
$lblDocSec.Font                  = 'Microsoft Sans Serif,10'

$lblSXSec                        = New-Object system.Windows.Forms.Label
$lblSXSec.text                   = "SX Security (Trend)*"
$lblSXSec.AutoSize               = $true
$lblSXSec.width                  = 25
$lblSXSec.height                 = 10
$lblSXSec.location               = New-Object System.Drawing.Point(10,540)
$lblSXSec.Font                   = 'Microsoft Sans Serif,10'

$lblSXSecAdd                     = New-Object system.Windows.Forms.Label
$lblSXSecAdd.text                = "Additional SX Security"
$lblSXSecAdd.AutoSize            = $true
$lblSXSecAdd.width               = 25
$lblSXSecAdd.height              = 10
$lblSXSecAdd.location            = New-Object System.Drawing.Point(10,700)
$lblSXSecAdd.Font                = 'Microsoft Sans Serif,10'

$lblVendorSec                    = New-Object system.Windows.Forms.Label
$lblVendorSec.text               = "Vendor Security"
$lblVendorSec.AutoSize           = $true
$lblVendorSec.width              = 25
$lblVendorSec.height             = 10
$lblVendorSec.location           = New-Object System.Drawing.Point(10,860)
$lblVendorSec.Font               = 'Microsoft Sans Serif,10'
#endregion Labels  

#region Checkboxes
$chkEmail                        = New-Object system.Windows.Forms.CheckBox
$chkEmail.text                   = "Check this field if a new email is needed."
$chkEmail.AutoSize               = $true
$chkEmail.BackColor              = "#f1f6fd"
$chkEmail.width                  = 490
$chkEmail.height                 = 20
$chkEmail.location               = New-Object System.Drawing.Point(250,370)
$chkEmail.Font                   = 'Microsoft Sans Serif,10'

$chkMobileEmail                  = New-Object system.Windows.Forms.CheckBox
$chkMobileEmail.text             = "Check this field if user requires email on their mobile device."
$chkMobileEmail.AutoSize         = $true
$chkMobileEmail.BackColor        = "#f1f6fd"
$chkMobileEmail.width            = 490
$chkMobileEmail.height           = 20
$chkMobileEmail.location         = New-Object System.Drawing.Point(249,399)
$chkMobileEmail.Font             = 'Microsoft Sans Serif,10'

$chkSaleslogix                   = New-Object system.Windows.Forms.CheckBox
$chkSaleslogix.text              = "Check this field if user will require SalesLogix."
$chkSaleslogix.AutoSize          = $true
$chkSaleslogix.BackColor         = "#f1f6fd"
$chkSaleslogix.width             = 490
$chkSaleslogix.height            = 20
$chkSaleslogix.location          = New-Object System.Drawing.Point(250,430)
$chkSaleslogix.Font              = 'Microsoft Sans Serif,10'
#endregion Checkboxes

#region Group RequestType
$grpRequestType                  = New-Object system.Windows.Forms.Groupbox
$grpRequestType.height           = 70
$grpRequestType.width            = 200
$grpRequestType.BackColor        = "#f1f6fd"
$grpRequestType.location         = New-Object System.Drawing.Point(250,170)

$rbExisting                      = New-Object system.Windows.Forms.RadioButton
$rbExisting.text                 = "Existing User"
$rbExisting.AutoSize             = $true
$rbExisting.width                = 104
$rbExisting.height               = 20
$rbExisting.location             = New-Object System.Drawing.Point(10,30)
$rbExisting.Font                 = 'Microsoft Sans Serif,10'

$rbRemove                        = New-Object system.Windows.Forms.RadioButton
$rbRemove.text                   = "Remove User"
$rbRemove.AutoSize               = $true
$rbRemove.width                  = 104
$rbRemove.height                 = 12
$rbRemove.location               = New-Object System.Drawing.Point(10,50)
$rbRemove.Font                   = 'Microsoft Sans Serif,10'

$rbNew                           = New-Object system.Windows.Forms.RadioButton
$rbNew.text                      = "New Hire"
$rbNew.AutoSize                  = $true
$rbNew.width                     = 104
$rbNew.height                    = 20
$rbNew.location                  = New-Object System.Drawing.Point(10,10)
$rbNew.Font                      = 'Microsoft Sans Serif,10'
#endregion Group RequestType

#region Group Docuware Security
$grpDocuwareSec                  = New-Object system.Windows.Forms.Groupbox
$grpDocuwareSec.height           = 70
$grpDocuwareSec.width            = 200
$grpDocuwareSec.BackColor        = "#f1f6fd"
$grpDocuwareSec.location         = New-Object System.Drawing.Point(250,460)

$chkAPViewer                     = New-Object system.Windows.Forms.CheckBox
$chkAPViewer.text                = "Accounts Payable Viewer"
$chkAPViewer.AutoSize            = $true
$chkAPViewer.width               = 200
$chkAPViewer.height              = 20
$chkAPViewer.location            = New-Object System.Drawing.Point(10,10)
$chkAPViewer.Font                = 'Microsoft Sans Serif,10'

$chkAPApprover                   = New-Object system.Windows.Forms.CheckBox
$chkAPApprover.text              = "Accounts Payable Approver"
$chkAPApprover.AutoSize          = $true
$chkAPApprover.width             = 200
$chkAPApprover.height            = 20
$chkAPApprover.location          = New-Object System.Drawing.Point(10,30)
$chkAPApprover.Font              = 'Microsoft Sans Serif,10'

$chkWarrantyUser                 = New-Object system.Windows.Forms.CheckBox
$chkWarrantyUser.text            = "Warranty Claims User"
$chkWarrantyUser.AutoSize        = $true
$chkWarrantyUser.width           = 200
$chkWarrantyUser.height          = 20
$chkWarrantyUser.location        = New-Object System.Drawing.Point(10,50)
$chkWarrantyUser.Font            = 'Microsoft Sans Serif,10'
#endregion Group Docuware Security

#region Group SX Security
$grpSXSec                        = New-Object system.Windows.Forms.Groupbox
$grpSXSec.height                 = 150
$grpSXSec.width                  = 250
$grpSXSec.BackColor              = "#f1f6fd"
$grpSXSec.location               = New-Object System.Drawing.Point(250,540)

$rbNoChange                      = New-Object system.Windows.Forms.RadioButton
$rbNoChange.text                 = "No Change"
$rbNoChange.AutoSize             = $true
$rbNoChange.width                = 200
$rbNoChange.height               = 20
$rbNoChange.location             = New-Object System.Drawing.Point(10,10)
$rbNoChange.Font                 = 'Microsoft Sans Serif,10'

$rbRemoveSec                     = New-Object system.Windows.Forms.RadioButton
$rbRemoveSec.text                = "Remove Security"
$rbRemoveSec.AutoSize            = $true
$rbRemoveSec.width               = 200
$rbRemoveSec.height              = 20
$rbRemoveSec.location            = New-Object System.Drawing.Point(10,30)
$rbRemoveSec.Font                = 'Microsoft Sans Serif,10'

$rbLOG                           = New-Object system.Windows.Forms.RadioButton
$rbLOG.text                      = "LOG - Logistics employees only"
$rbLOG.AutoSize                  = $true
$rbLOG.width                     = 104
$rbLOG.height                    = 20
$rbLOG.location                  = New-Object System.Drawing.Point(10,50)
$rbLOG.Font                      = 'Microsoft Sans Serif,10'

$rbMGR                           = New-Object system.Windows.Forms.RadioButton
$rbMGR.text                      = "MGR - Manager"
$rbMGR.AutoSize                  = $true
$rbMGR.width                     = 104
$rbMGR.height                    = 20
$rbMGR.location                  = New-Object System.Drawing.Point(10,70)
$rbMGR.Font                      = 'Microsoft Sans Serif,10'

$rbNMGR                          = New-Object system.Windows.Forms.RadioButton
$rbNMGR.text                     = "NMGR - Non-Manager"
$rbNMGR.AutoSize                 = $true
$rbNMGR.width                    = 104
$rbNMGR.height                   = 20
$rbNMGR.location                 = New-Object System.Drawing.Point(9,91)
$rbNMGR.Font                     = 'Microsoft Sans Serif,10'

$rbINQ                           = New-Object system.Windows.Forms.RadioButton
$rbINQ.text                      = "INQ - Inquire Only"
$rbINQ.AutoSize                  = $true
$rbINQ.width                     = 104
$rbINQ.height                    = 20
$rbINQ.location                  = New-Object System.Drawing.Point(10,110)
$rbINQ.Font                      = 'Microsoft Sans Serif,10'

$rbSFLD                          = New-Object system.Windows.Forms.RadioButton
$rbSFLD.text                     = "SFLD - Field Service Technician"
$rbSFLD.AutoSize                 = $true
$rbSFLD.width                    = 104
$rbSFLD.height                   = 12
$rbSFLD.location                 = New-Object System.Drawing.Point(10,130)
$rbSFLD.Font                     = 'Microsoft Sans Serif,10'
#endregion Group SX Security

#region Group Additional SX Security
$grpSXSecAdd                     = New-Object system.Windows.Forms.Groupbox
$grpSXSecAdd.height              = 150
$grpSXSecAdd.width               = 254
$grpSXSecAdd.BackColor           = "#f1f6fd"
$grpSXSecAdd.location            = New-Object System.Drawing.Point(250,700)

$chkAllWarehouse                 = New-Object system.Windows.Forms.CheckBox
$chkAllWarehouse.text            = "All Warehouses"
$chkAllWarehouse.AutoSize        = $true
$chkAllWarehouse.width           = 95
$chkAllWarehouse.height          = 20
$chkAllWarehouse.location        = New-Object System.Drawing.Point(10,10)
$chkAllWarehouse.Font            = 'Microsoft Sans Serif,10'

$chkPayrollAdmin                 = New-Object system.Windows.Forms.CheckBox
$chkPayrollAdmin.text            = "Payroll - Admin"
$chkPayrollAdmin.AutoSize        = $true
$chkPayrollAdmin.width           = 95
$chkPayrollAdmin.height          = 20
$chkPayrollAdmin.location        = New-Object System.Drawing.Point(10,30)
$chkPayrollAdmin.Font            = 'Microsoft Sans Serif,10'

$chkPayrollVerify                = New-Object system.Windows.Forms.CheckBox
$chkPayrollVerify.text           = "Payroll - Verify"
$chkPayrollVerify.AutoSize       = $true
$chkPayrollVerify.width          = 95
$chkPayrollVerify.height         = 20
$chkPayrollVerify.location       = New-Object System.Drawing.Point(10,50)
$chkPayrollVerify.Font           = 'Microsoft Sans Serif,10'

$chkPayrollApprove               = New-Object system.Windows.Forms.CheckBox
$chkPayrollApprove.text          = "Payroll - Approve"
$chkPayrollApprove.AutoSize      = $true
$chkPayrollApprove.width         = 95
$chkPayrollApprove.height        = 20
$chkPayrollApprove.location      = New-Object System.Drawing.Point(10,70)
$chkPayrollApprove.Font          = 'Microsoft Sans Serif,10'

$chkPayrollEntry                 = New-Object system.Windows.Forms.CheckBox
$chkPayrollEntry.text            = "Payroll - Entry"
$chkPayrollEntry.AutoSize        = $true
$chkPayrollEntry.width           = 95
$chkPayrollEntry.height          = 20
$chkPayrollEntry.location        = New-Object System.Drawing.Point(10,90)
$chkPayrollEntry.Font            = 'Microsoft Sans Serif,10'

$chkFreightBills                 = New-Object system.Windows.Forms.CheckBox
$chkFreightBills.text            = "Freight Bills"
$chkFreightBills.AutoSize        = $true
$chkFreightBills.width           = 95
$chkFreightBills.height          = 20
$chkFreightBills.location        = New-Object System.Drawing.Point(10,110)
$chkFreightBills.Font            = 'Microsoft Sans Serif,10'

$chkPartsManager                 = New-Object system.Windows.Forms.CheckBox
$chkPartsManager.text            = "Parts Manager"
$chkPartsManager.AutoSize        = $true
$chkPartsManager.width           = 95
$chkPartsManager.height          = 20
$chkPartsManager.location        = New-Object System.Drawing.Point(10,130)
$chkPartsManager.Font            = 'Microsoft Sans Serif,10'
#endregion Group Additional SX Security

#region Group Vendor Security
$grpVendorSec                    = New-Object system.Windows.Forms.Groupbox
$grpVendorSec.height             = 430
$grpVendorSec.width              = 495
$grpVendorSec.BackColor          = "#f1f6fd"
$grpVendorSec.location           = New-Object System.Drawing.Point(250,860)

$chkAccessFL                     = New-Object system.Windows.Forms.CheckBox
$chkAccessFL.text                = "Access Freightliner"
$chkAccessFL.AutoSize            = $true
$chkAccessFL.width               = 95
$chkAccessFL.height              = 20
$chkAccessFL.location            = New-Object System.Drawing.Point(10,10)
$chkAccessFL.Font                = 'Microsoft Sans Serif,10'

$chkCreateFLWarranty             = New-Object system.Windows.Forms.CheckBox
$chkCreateFLWarranty.text        = "Access Freightliner Warranty (create claims)"
$chkCreateFLWarranty.AutoSize    = $true
$chkCreateFLWarranty.width       = 95
$chkCreateFLWarranty.height      = 20
$chkCreateFLWarranty.location    = New-Object System.Drawing.Point(10,30)
$chkCreateFLWarranty.Font        = 'Microsoft Sans Serif,10'

$chkReadFLWarranty               = New-Object system.Windows.Forms.CheckBox
$chkReadFLWarranty.text          = "Access Freightliner Warranty (read only)"
$chkReadFLWarranty.AutoSize      = $true
$chkReadFLWarranty.width         = 95
$chkReadFLWarranty.height        = 20
$chkReadFLWarranty.location      = New-Object System.Drawing.Point(10,50)
$chkReadFLWarranty.Font          = 'Microsoft Sans Serif,10'

$chkATDEx                        = New-Object system.Windows.Forms.CheckBox
$chkATDEx.text                   = "ATD Extranet"
$chkATDEx.AutoSize               = $true
$chkATDEx.width                  = 95
$chkATDEx.height                 = 20
$chkATDEx.location               = New-Object System.Drawing.Point(10,70)
$chkATDEx.Font                   = 'Microsoft Sans Serif,10'

$chkAWAARE                       = New-Object system.Windows.Forms.CheckBox
$chkAWAARE.text                  = "AWAARE"
$chkAWAARE.AutoSize              = $true
$chkAWAARE.width                 = 95
$chkAWAARE.height                = 20
$chkAWAARE.location              = New-Object System.Drawing.Point(10,90)
$chkAWAARE.Font                  = 'Microsoft Sans Serif,10'

$chkATDSAP                       = New-Object system.Windows.Forms.CheckBox
$chkATDSAP.text                  = "ATD- SAP (`$221.00/yr)"
$chkATDSAP.AutoSize              = $true
$chkATDSAP.width                 = 95
$chkATDSAP.height                = 20
$chkATDSAP.location              = New-Object System.Drawing.Point(10,110)
$chkATDSAP.Font                  = 'Microsoft Sans Serif,10'

$chkSCAAN                        = New-Object system.Windows.Forms.CheckBox
$chkSCAAN.text                   = "iSCAAN"
$chkSCAAN.AutoSize               = $true
$chkSCAAN.width                  = 95
$chkSCAAN.height                 = 20
$chkSCAAN.location               = New-Object System.Drawing.Point(10,130)
$chkSCAAN.Font                   = 'Microsoft Sans Serif,10'

$chkEparts                       = New-Object system.Windows.Forms.CheckBox
$chkEparts.text                  = "E-Parts/Service Lit. (`$100.00/yr)"
$chkEparts.AutoSize              = $true
$chkEparts.width                 = 95
$chkEparts.height                = 20
$chkEparts.location              = New-Object System.Drawing.Point(10,150)
$chkEparts.Font                  = 'Microsoft Sans Serif,10'

$chkFleetCross                   = New-Object system.Windows.Forms.CheckBox
$chkFleetCross.text              = "Fleetcross"
$chkFleetCross.AutoSize          = $true
$chkFleetCross.width             = 95
$chkFleetCross.height            = 20
$chkFleetCross.location          = New-Object System.Drawing.Point(10,170)
$chkFleetCross.Font              = 'Microsoft Sans Serif,10'

$chkDIBS                         = New-Object system.Windows.Forms.CheckBox
$chkDIBS.text                    = "DIBS Engines/Parts"
$chkDIBS.AutoSize                = $true
$chkDIBS.width                   = 95
$chkDIBS.height                  = 20
$chkDIBS.location                = New-Object System.Drawing.Point(10,190)
$chkDIBS.Font                    = 'Microsoft Sans Serif,10'

$chkDDC                          = New-Object system.Windows.Forms.CheckBox
$chkDDC.text                     = "DDC Powernet"
$chkDDC.AutoSize                 = $true
$chkDDC.width                    = 95
$chkDDC.height                   = 20
$chkDDC.location                 = New-Object System.Drawing.Point(10,210)
$chkDDC.Font                     = 'Microsoft Sans Serif,10'

$chkECM                          = New-Object system.Windows.Forms.CheckBox
$chkECM.text                     = "ECM - Uprate/Derate"
$chkECM.AutoSize                 = $true
$chkECM.width                    = 95
$chkECM.height                   = 20
$chkECM.location                 = New-Object System.Drawing.Point(10,230)
$chkECM.Font                     = 'Microsoft Sans Serif,10'

$chkBackdoor                     = New-Object system.Windows.Forms.CheckBox
$chkBackdoor.text                = "Backdoor/Horsepower"
$chkBackdoor.AutoSize            = $true
$chkBackdoor.width               = 95
$chkBackdoor.height              = 20
$chkBackdoor.location            = New-Object System.Drawing.Point(10,250)
$chkBackdoor.Font                = 'Microsoft Sans Serif,10'

$chkGeoDrive                     = New-Object system.Windows.Forms.CheckBox
$chkGeoDrive.text                = "GeoTab Drive (include Drivers license number and state in comments)"
$chkGeoDrive.AutoSize            = $true
$chkGeoDrive.width               = 95
$chkGeoDrive.height              = 20
$chkGeoDrive.location            = New-Object System.Drawing.Point(10,270)
$chkGeoDrive.Font                = 'Microsoft Sans Serif,10'

$chkGeoSite                      = New-Object system.Windows.Forms.CheckBox
$chkGeoSite.text                 = "GeoTab Site"
$chkGeoSite.AutoSize             = $true
$chkGeoSite.width                = 95
$chkGeoSite.height               = 20
$chkGeoSite.location             = New-Object System.Drawing.Point(10,290)
$chkGeoSite.Font                 = 'Microsoft Sans Serif,10'

$chkTogBusToke                   = New-Object system.Windows.Forms.CheckBox
$chkTogBusToke.text              = "Tognum Business Portal Token"
$chkTogBusToke.AutoSize          = $true
$chkTogBusToke.width             = 95
$chkTogBusToke.height            = 20
$chkTogBusToke.location          = New-Object System.Drawing.Point(10,310)
$chkTogBusToke.Font              = 'Microsoft Sans Serif,10'

$chkTogBusSmart                  = New-Object system.Windows.Forms.CheckBox
$chkTogBusSmart.text             = "Tognum Business Portal Smartphone App (put phone number in comments)"
$chkTogBusSmart.AutoSize         = $true
$chkTogBusSmart.width            = 95
$chkTogBusSmart.height           = 20
$chkTogBusSmart.location         = New-Object System.Drawing.Point(10,330)
$chkTogBusSmart.Font             = 'Microsoft Sans Serif,10'

$chkMTU                          = New-Object system.Windows.Forms.CheckBox
$chkMTU.text                     = "MTU Business Portal Warranty"
$chkMTU.AutoSize                 = $true
$chkMTU.width                    = 95
$chkMTU.height                   = 20
$chkMTU.location                 = New-Object System.Drawing.Point(10,350)
$chkMTU.Font                     = 'Microsoft Sans Serif,10'

$chkLinq                         = New-Object system.Windows.Forms.CheckBox
$chkLinq.text                    = "Linq (Decisiv)"
$chkLinq.AutoSize                = $true
$chkLinq.width                   = 95
$chkLinq.height                  = 20
$chkLinq.location                = New-Object System.Drawing.Point(10,370)
$chkLinq.Font                    = 'Microsoft Sans Serif,10'

$chkWT                           = New-Object system.Windows.Forms.CheckBox
$chkWT.text                      = "WheelTime.com"
$chkWT.AutoSize                  = $true
$chkWT.width                     = 95
$chkWT.height                    = 20
$chkWT.location                  = New-Object System.Drawing.Point(10,390)
$chkWT.Font                      = 'Microsoft Sans Serif,10'

$chkWTExchange                   = New-Object system.Windows.Forms.CheckBox
$chkWTExchange.text              = "WheelTime Exchange (place parts orders)"
$chkWTExchange.AutoSize          = $true
$chkWTExchange.width             = 95
$chkWTExchange.height            = 20
$chkWTExchange.location          = New-Object System.Drawing.Point(10,410)
$chkWTExchange.Font              = 'Microsoft Sans Serif,10'

$btnSubmit                       = New-Object system.Windows.Forms.Button
$btnSubmit.BackColor             = "#9b9b9b"
$btnSubmit.text                  = "Submit"
$btnSubmit.width                 = 60
$btnSubmit.height                = 30
$btnSubmit.location              = New-Object System.Drawing.Point(315,1330)
$btnSubmit.Font                  = 'Microsoft Sans Serif,10,style=Bold'
$btnSubmit.ForeColor             = "#000000"
#endregion Group Vendor Security

#region Comboboxes
$cboJobTitle                     = New-Object system.Windows.Forms.ComboBox
$cboJobTitle.width               = 250
$cboJobTitle.height              = 20
@('Accounting Analyst','Accounting Clerk','Administrative Assistant','Application Engineer','Applications Systems Analyst','Apprentice','Assistant Controller','Assistant Program Manager','Benefits Administrator','Branch Manager','Business Analyst','CAD Technician','Chairman Emeritus','Chief Executive Officer','Chief Financial Officer','Chief Information Officer','Consultant','Contract Specialist','Controller/Treasurer','Credit Admin','Credit Analyst','Credit Manager','CS Administrator','Data Entry Coordinator 2','Defense Business Development','Defense Business Inside Sales','Delivery Driver, Parts','Deutz Engine Business Manager','Diagnostic Technician','Distribution Manager','Divisional Administrative Assistant','Divisional Dealer Development Manager','Divisional General Manager','Divisional Warranty Administrator','Divisional Warranty Supervisor','Executive Administrative Assistant','Executive Assistant and IT Process Analyst','Fabrication Supervisor','Fabricator','File Clerk','General Counsel','General Credit Manager','General Sales Manager','General Service Manager','Generator Sales Representative','Generator Service Agreement Administrator','Generator Service Manager','Generator Services Sales Representative','Generator Technician 1','Generator Technician 2','Generator Technician 3','Generator Technician 4','Generator Technician Journeyman','Generator Technician Trainee','Human Resource Admin','Human Resource Recruiter','Human Resources Administrator','Information Systems Support','Information Systems Support Supervisor','Inside Sales Support','Inside Sales, Parts','Internal Audit Mgr','Internal Auditor','Inventory Analyst','Inventory Planner/Buyer','IT Intern','IT Operations Manager','Journeyman','Maintenance Technician','Manager, Generator Dept','Manager, Parts Distribution','Manager, Product Acquisitions &amp; Operations','Marketing and IT Coordinator','Marketing Intern','Marketing Manager','Materials Manager','Network Systems Administrator','Off-Highway Sales Representative','Operations Manager','Parts Expeditor','Parts Expeditor 1','Parts Expeditor 2','Parts Manager','Parts Rep 1','Parts Rep 2','Parts Rep 3','Parts Warehouse Associate','Payroll Accountant','Planner/Scheduler 2','President','Product Sales Manager','Project Manager','Purchasing &amp; Facilities','Receptionist','Regional Parts Manager','Regional Vice President of Sales','Sales Administrator','Sales Engineer','Senior Inventory Analyst','Senior Programmer/Analyst','Service Advisor','Service Desk Technician','Service Manager','Service Quality Manager','Service Supervisor','Software Development Manager','Solutions Delivery Manager','Sr Parts Rep','Staff Accountant','Supply Chain Analyst','Supply Chain Manager','Systems Administrator','Systems Training Coordinator','Tax Manager','Technical Field Support','Technical Support Associate','Technical Support, Parts','Technician 1','Technician 2','Technician 3','Technician 4','Technician Trainee','Territory Sales Representative','Trainer - Technical','Transit Sales Rep','Truck Driver 1','Truck Driver 2','Utility Person','Vice President','Vice President Operations','Vice President,  Human Resources','Vice President, Business Development','Vice President, Business Processes &amp; Parts','Warehouse Associate 1','Warehouse Associate 2','Warehouse Supervisor','Warranty Administrator','Web Developer','Working Supervisor','Working Svc Sprvsr'
) | ForEach-Object {[void] $cboJobTitle.Items.Add($_)}
$cboJobTitle.location            = New-Object System.Drawing.Point(250,110)
$cboJobTitle.Font                = 'Microsoft Sans Serif,10'

$cboCSC                          = New-Object system.Windows.Forms.ComboBox
$cboCSC.width                    = 150
$cboCSC.height                   = 20
@('1100 1WWW','2400 4WSW','2407 4GSW','2410 4PHX','2420 4TUC','2430 4FLG','2440 4DFS','2460 4LAS','2471 4MCA','2472 4MGU','2500 5WMW','2507 5GMW','2510 5CLB','2520 5CLV','2530 5TOL','2540 5GTS','2550 5YNG','2560 5DBR','2570 5SAG','2580 5GRR','2583 5MTU','2584 5LEX','2585 5BLF','2587 5LVL','2590 5CPD','2600 6WSE','2607 6GSE','2610 6SAV','2612 6SA2','2640 6ALB','2650 6ATL','2660 6ACW','2670 6CBS','2680 6GRE','2720 6BIR','2722 6BI2','2730 6NSH','3300 3WCT','3310 3CMH','3330 3CIN','3340 3RIC','3360 3LOU','4700 4GMX','5100 AWAS','5110 APH2','5120 ATU2','5130 AHBK','2630 6ALR','7100','7110 7DIS','7115 7MER','7130 7AGA','7135 7ATB','7140 7LET','7145 7BLT','7146 7HLT','7150 7RED','7152 7RNG','7153 7RL3','7155 7URS','7160 7BAE','7170 7LMS','8800 8WPS','8860 8AWH'
) | ForEach-Object {[void] $cboCSC.Items.Add($_)}
$cboCSC.location                 = New-Object System.Drawing.Point(250,140)
$cboCSC.Font                     = 'Microsoft Sans Serif,10'
#endregion Comboboxes

$NewUserForm.controls.AddRange(@($lblFirstName,$txtFirstName,$lblMiddleInitial,$txtMiddleInitial,$lblLastName,$txtLastName,$lblJobTitle,$cboJobTitle,$lblCSC,$cboCSC,$lblRequestType,$grpRequestType,$lblEmpNo,$txtEmployeeNo,$lblPhoneExt,$txtPhoneExt,$lblCompAssetNo,$txtCompAssetNo,$lblDefaultPrint,$txtDefaultPrint,$lblEmail,$chkEmail,$lblMobileEmail,$chkMobileEmail,$lblSaleslogix,$chkSaleslogix,$lblDocSec,$grpDocuwareSec,$lblSXSec,$grpSXSec,$lblSXSecAdd,$grpSXSecAdd,$lblVendorSec,$grpVendorSec,$btnSubmit,$pnlBackground))
$grpRequestType.controls.AddRange(@($rbExisting,$rbRemove,$rbNew))
$grpDocuwareSec.controls.AddRange(@($chkAPViewer,$chkAPApprover,$chkWarrantyUser))
$grpSXSec.controls.AddRange(@($rbNoChange,$rbRemoveSec,$rbLOG,$rbMGR,$rbNMGR,$rbINQ,$rbSFLD))
$grpSXSecAdd.controls.AddRange(@($chkAllWarehouse,$chkPayrollAdmin,$chkPayrollVerify,$chkPayrollApprove,$chkPayrollEntry,$chkFreightBills,$chkPartsManager))
$grpVendorSec.controls.AddRange(@($chkAccessFL,$chkCreateFLWarranty,$chkReadFLWarranty,$chkATDEx,$chkAWAARE,$chkATDSAP,$chkSCAAN,$chkEparts,$chkFleetCross,$chkDIBS,$chkDDC,$chkECM,$chkBackdoor,$chkGeoDrive,$chkGeoSite,$chkTogBusToke,$chkTogBusSmart,$chkMTU,$chkLinq,$chkWT,$chkWTExchange))

#region gui events {
$btnSubmit.Add_Click({ Submit })
#endregion events }

#endregion GUI }


[void]$NewUserForm.ShowDialog()
Submit([ref]$firstName)
$firstName


