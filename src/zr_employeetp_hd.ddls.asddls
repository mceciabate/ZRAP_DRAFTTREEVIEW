@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for composition child'

define view entity ZR_EmployeeTP_HD
  as select from ZI_EMPLOYEE_HR

  association         to parent ZR_AgencyTP_HD as _Agency   on  $projection.Agency = _Agency.Agency
  association of many to one ZR_EmployeeTP_HD  as _Manager  on  $projection.Agency  = _Manager.Agency
                                                            and $projection.Manager = _Manager.Employee
  association of many to many ZR_EmployeeTP_HD as _Employee on  $projection.Agency   = _Employee.Agency
                                                            and $projection.Employee = _Employee.Manager
  association of one  to one I_Currency        as _Currency on  $projection.SalaryCurrency = _Currency.Currency

{

  key Agency,
  key Employee,
      FirstName,
      LastName,
      @Semantics.amount.currencyCode: 'SalaryCurrency'
      Salary,
      SalaryCurrency,
      Manager,
      SiblingOrderNumber,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _Agency,
      _Manager,
      _Employee,
      _Currency

}
