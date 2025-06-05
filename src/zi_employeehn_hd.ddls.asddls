@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee HierarchyNode'

define hierarchy ZI_EmployeeHN_HD
  with parameters
    P_Agency : /dmo/agency_id

  as parent child hierarchy(
    source ZI_EMPLOYEE_HR

    child to parent association _Manager

    directory _Agency filter by
      Agency = $parameters.P_Agency

    start where
      Manager is initial

    siblings order by
      SiblingOrderNumber ascending
  )
{
  key Agency,
  key Employee,
      Manager,
      SiblingOrderNumber

}
