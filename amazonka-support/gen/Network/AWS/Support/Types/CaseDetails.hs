{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.CaseDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.CaseDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Support.Types.RecentCaseCommunications

-- | A JSON-formatted object that contains the metadata for a support case. It is contained in the response from a 'DescribeCases' request. __CaseDetails__ contains the following fields:
--
--
--     * __caseId.__ The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/ .
--
--     * __categoryCode.__ The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to 'DescribeServices' .
--
--     * __displayId.__ The identifier for the case on pages in the AWS Support Center.
--
--     * __language.__ The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
--
--     * __nextToken.__ A resumption point for pagination.
--
--     * __recentCommunications.__ One or more 'Communication' objects. Fields of these objects are @attachments@ , @body@ , @caseId@ , @submittedBy@ , and @timeCreated@ .
--
--     * __serviceCode.__ The identifier for the AWS service that corresponds to the service code defined in the call to 'DescribeServices' .
--
--     * __severityCode.__ The severity code assigned to the case. Contains one of the values returned by the call to 'DescribeSeverityLevels' . The possible values are: @low@ , @normal@ , @high@ , @urgent@ , and @critical@ .
--
--     * __status.__ The status of the case in the AWS Support Center. Valid values:
--
--     * @opened@
--
--     * @pending-customer-action@
--
--     * @reopened@
--
--     * @resolved@
--
--     * @unassigned@
--
--     * @work-in-progress@
--
--
--
--     * __subject.__ The subject line of the case.
--
--     * __submittedBy.__ The email address of the account that submitted the case.
--
--     * __timeCreated.__ The time the case was created, in ISO-8601 format.
--
--
--
--
-- /See:/ 'caseDetails' smart constructor.
data CaseDetails = CaseDetails'
  { _cdDisplayId ::
      !(Maybe Text),
    _cdStatus :: !(Maybe Text),
    _cdCaseId :: !(Maybe Text),
    _cdRecentCommunications ::
      !(Maybe RecentCaseCommunications),
    _cdServiceCode :: !(Maybe Text),
    _cdCategoryCode :: !(Maybe Text),
    _cdSubmittedBy :: !(Maybe Text),
    _cdSubject :: !(Maybe Text),
    _cdCcEmailAddresses :: !(Maybe [Text]),
    _cdSeverityCode :: !(Maybe Text),
    _cdTimeCreated :: !(Maybe Text),
    _cdLanguage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDisplayId' - The ID displayed for the case in the AWS Support Center. This is a numeric string.
--
-- * 'cdStatus' - The status of the case. Valid values:     * @opened@      * @pending-customer-action@      * @reopened@      * @resolved@      * @unassigned@      * @work-in-progress@
--
-- * 'cdCaseId' - The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
--
-- * 'cdRecentCommunications' - The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a @nextToken@ that you can use to retrieve earlier communications.
--
-- * 'cdServiceCode' - The code for the AWS service. You can get a list of codes and the corresponding service names by calling 'DescribeServices' .
--
-- * 'cdCategoryCode' - The category of problem for the AWS Support case.
--
-- * 'cdSubmittedBy' - The email address of the account that submitted the case.
--
-- * 'cdSubject' - The subject line for the case in the AWS Support Center.
--
-- * 'cdCcEmailAddresses' - The email addresses that receive copies of communication about the case.
--
-- * 'cdSeverityCode' - The code for the severity level returned by the call to 'DescribeSeverityLevels' .
--
-- * 'cdTimeCreated' - The time that the case was created in the AWS Support Center.
--
-- * 'cdLanguage' - The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
caseDetails ::
  CaseDetails
caseDetails =
  CaseDetails'
    { _cdDisplayId = Nothing,
      _cdStatus = Nothing,
      _cdCaseId = Nothing,
      _cdRecentCommunications = Nothing,
      _cdServiceCode = Nothing,
      _cdCategoryCode = Nothing,
      _cdSubmittedBy = Nothing,
      _cdSubject = Nothing,
      _cdCcEmailAddresses = Nothing,
      _cdSeverityCode = Nothing,
      _cdTimeCreated = Nothing,
      _cdLanguage = Nothing
    }

-- | The ID displayed for the case in the AWS Support Center. This is a numeric string.
cdDisplayId :: Lens' CaseDetails (Maybe Text)
cdDisplayId = lens _cdDisplayId (\s a -> s {_cdDisplayId = a})

-- | The status of the case. Valid values:     * @opened@      * @pending-customer-action@      * @reopened@      * @resolved@      * @unassigned@      * @work-in-progress@
cdStatus :: Lens' CaseDetails (Maybe Text)
cdStatus = lens _cdStatus (\s a -> s {_cdStatus = a})

-- | The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-/12345678910-2013-c4c1d2bf33c5cf47/
cdCaseId :: Lens' CaseDetails (Maybe Text)
cdCaseId = lens _cdCaseId (\s a -> s {_cdCaseId = a})

-- | The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a @nextToken@ that you can use to retrieve earlier communications.
cdRecentCommunications :: Lens' CaseDetails (Maybe RecentCaseCommunications)
cdRecentCommunications = lens _cdRecentCommunications (\s a -> s {_cdRecentCommunications = a})

-- | The code for the AWS service. You can get a list of codes and the corresponding service names by calling 'DescribeServices' .
cdServiceCode :: Lens' CaseDetails (Maybe Text)
cdServiceCode = lens _cdServiceCode (\s a -> s {_cdServiceCode = a})

-- | The category of problem for the AWS Support case.
cdCategoryCode :: Lens' CaseDetails (Maybe Text)
cdCategoryCode = lens _cdCategoryCode (\s a -> s {_cdCategoryCode = a})

-- | The email address of the account that submitted the case.
cdSubmittedBy :: Lens' CaseDetails (Maybe Text)
cdSubmittedBy = lens _cdSubmittedBy (\s a -> s {_cdSubmittedBy = a})

-- | The subject line for the case in the AWS Support Center.
cdSubject :: Lens' CaseDetails (Maybe Text)
cdSubject = lens _cdSubject (\s a -> s {_cdSubject = a})

-- | The email addresses that receive copies of communication about the case.
cdCcEmailAddresses :: Lens' CaseDetails [Text]
cdCcEmailAddresses = lens _cdCcEmailAddresses (\s a -> s {_cdCcEmailAddresses = a}) . _Default . _Coerce

-- | The code for the severity level returned by the call to 'DescribeSeverityLevels' .
cdSeverityCode :: Lens' CaseDetails (Maybe Text)
cdSeverityCode = lens _cdSeverityCode (\s a -> s {_cdSeverityCode = a})

-- | The time that the case was created in the AWS Support Center.
cdTimeCreated :: Lens' CaseDetails (Maybe Text)
cdTimeCreated = lens _cdTimeCreated (\s a -> s {_cdTimeCreated = a})

-- | The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
cdLanguage :: Lens' CaseDetails (Maybe Text)
cdLanguage = lens _cdLanguage (\s a -> s {_cdLanguage = a})

instance FromJSON CaseDetails where
  parseJSON =
    withObject
      "CaseDetails"
      ( \x ->
          CaseDetails'
            <$> (x .:? "displayId")
            <*> (x .:? "status")
            <*> (x .:? "caseId")
            <*> (x .:? "recentCommunications")
            <*> (x .:? "serviceCode")
            <*> (x .:? "categoryCode")
            <*> (x .:? "submittedBy")
            <*> (x .:? "subject")
            <*> (x .:? "ccEmailAddresses" .!= mempty)
            <*> (x .:? "severityCode")
            <*> (x .:? "timeCreated")
            <*> (x .:? "language")
      )

instance Hashable CaseDetails

instance NFData CaseDetails
