{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.CreateCase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a case in the AWS Support Center. This operation is similar to how you create a case in the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
--
--
-- The AWS Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways:
--
--     * Submit a request from the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
--
--     * Use the Service Quotas <https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html RequestServiceQuotaIncrease> operation.
--
--
--
-- A successful @CreateCase@ request returns an AWS Support case number. You can use the 'DescribeCases' operation and specify the case number to get existing AWS Support cases. After you create a case, use the 'AddCommunicationToCase' operation to add additional communication or attachments to an existing case.
--
-- The @caseId@ is separate from the @displayId@ that appears in the <https://console.aws.amazon.com/support AWS Support Center> . Use the 'DescribeCases' operation to get the @displayId@ .
module Network.AWS.Support.CreateCase
  ( -- * Creating a Request
    createCase,
    CreateCase,

    -- * Request Lenses
    ccServiceCode,
    ccCategoryCode,
    ccCcEmailAddresses,
    ccIssueType,
    ccAttachmentSetId,
    ccSeverityCode,
    ccLanguage,
    ccSubject,
    ccCommunicationBody,

    -- * Destructuring the Response
    createCaseResponse,
    CreateCaseResponse,

    -- * Response Lenses
    ccrrsCaseId,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- | /See:/ 'createCase' smart constructor.
data CreateCase = CreateCase'
  { _ccServiceCode ::
      !(Maybe Text),
    _ccCategoryCode :: !(Maybe Text),
    _ccCcEmailAddresses :: !(Maybe [Text]),
    _ccIssueType :: !(Maybe Text),
    _ccAttachmentSetId :: !(Maybe Text),
    _ccSeverityCode :: !(Maybe Text),
    _ccLanguage :: !(Maybe Text),
    _ccSubject :: !Text,
    _ccCommunicationBody :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccServiceCode' - The code for the AWS service. You can use the 'DescribeServices' operation to get the possible @serviceCode@ values.
--
-- * 'ccCategoryCode' - The category of problem for the AWS Support case. You also use the 'DescribeServices' operation to get the category code for a service. Each AWS service defines its own set of category codes.
--
-- * 'ccCcEmailAddresses' - A list of email addresses that AWS Support copies on case correspondence. AWS Support identifies the account that creates the case when you specify your AWS credentials in an HTTP POST method or use the <http://aws.amazon.com/tools/ AWS SDKs> .
--
-- * 'ccIssueType' - The type of issue for the case. You can specify @customer-service@ or @technical@ . If you don't specify a value, the default is @technical@ .
--
-- * 'ccAttachmentSetId' - The ID of a set of one or more attachments for the case. Create the set by using the 'AddAttachmentsToSet' operation.
--
-- * 'ccSeverityCode' - A value that indicates the urgency of the case. This value determines the response time according to your service level agreement with AWS Support. You can use the 'DescribeSeverityLevels' operation to get the possible values for @severityCode@ .  For more information, see 'SeverityLevel' and <https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity Choosing a Severity> in the /AWS Support User Guide/ .
--
-- * 'ccLanguage' - The language in which AWS Support handles the case. You must specify the ISO 639-1 code for the @language@ parameter if you want support in that language. Currently, English ("en") and Japanese ("ja") are supported.
--
-- * 'ccSubject' - The title of the AWS Support case. The title appears in the __Subject__ field on the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
--
-- * 'ccCommunicationBody' - The communication body text that describes the issue. This text appears in the __Description__ field on the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
createCase ::
  -- | 'ccSubject'
  Text ->
  -- | 'ccCommunicationBody'
  Text ->
  CreateCase
createCase pSubject_ pCommunicationBody_ =
  CreateCase'
    { _ccServiceCode = Nothing,
      _ccCategoryCode = Nothing,
      _ccCcEmailAddresses = Nothing,
      _ccIssueType = Nothing,
      _ccAttachmentSetId = Nothing,
      _ccSeverityCode = Nothing,
      _ccLanguage = Nothing,
      _ccSubject = pSubject_,
      _ccCommunicationBody = pCommunicationBody_
    }

-- | The code for the AWS service. You can use the 'DescribeServices' operation to get the possible @serviceCode@ values.
ccServiceCode :: Lens' CreateCase (Maybe Text)
ccServiceCode = lens _ccServiceCode (\s a -> s {_ccServiceCode = a})

-- | The category of problem for the AWS Support case. You also use the 'DescribeServices' operation to get the category code for a service. Each AWS service defines its own set of category codes.
ccCategoryCode :: Lens' CreateCase (Maybe Text)
ccCategoryCode = lens _ccCategoryCode (\s a -> s {_ccCategoryCode = a})

-- | A list of email addresses that AWS Support copies on case correspondence. AWS Support identifies the account that creates the case when you specify your AWS credentials in an HTTP POST method or use the <http://aws.amazon.com/tools/ AWS SDKs> .
ccCcEmailAddresses :: Lens' CreateCase [Text]
ccCcEmailAddresses = lens _ccCcEmailAddresses (\s a -> s {_ccCcEmailAddresses = a}) . _Default . _Coerce

-- | The type of issue for the case. You can specify @customer-service@ or @technical@ . If you don't specify a value, the default is @technical@ .
ccIssueType :: Lens' CreateCase (Maybe Text)
ccIssueType = lens _ccIssueType (\s a -> s {_ccIssueType = a})

-- | The ID of a set of one or more attachments for the case. Create the set by using the 'AddAttachmentsToSet' operation.
ccAttachmentSetId :: Lens' CreateCase (Maybe Text)
ccAttachmentSetId = lens _ccAttachmentSetId (\s a -> s {_ccAttachmentSetId = a})

-- | A value that indicates the urgency of the case. This value determines the response time according to your service level agreement with AWS Support. You can use the 'DescribeSeverityLevels' operation to get the possible values for @severityCode@ .  For more information, see 'SeverityLevel' and <https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity Choosing a Severity> in the /AWS Support User Guide/ .
ccSeverityCode :: Lens' CreateCase (Maybe Text)
ccSeverityCode = lens _ccSeverityCode (\s a -> s {_ccSeverityCode = a})

-- | The language in which AWS Support handles the case. You must specify the ISO 639-1 code for the @language@ parameter if you want support in that language. Currently, English ("en") and Japanese ("ja") are supported.
ccLanguage :: Lens' CreateCase (Maybe Text)
ccLanguage = lens _ccLanguage (\s a -> s {_ccLanguage = a})

-- | The title of the AWS Support case. The title appears in the __Subject__ field on the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
ccSubject :: Lens' CreateCase Text
ccSubject = lens _ccSubject (\s a -> s {_ccSubject = a})

-- | The communication body text that describes the issue. This text appears in the __Description__ field on the AWS Support Center <https://console.aws.amazon.com/support/home#/case/create Create Case> page.
ccCommunicationBody :: Lens' CreateCase Text
ccCommunicationBody = lens _ccCommunicationBody (\s a -> s {_ccCommunicationBody = a})

instance AWSRequest CreateCase where
  type Rs CreateCase = CreateCaseResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          CreateCaseResponse'
            <$> (x .?> "caseId") <*> (pure (fromEnum s))
      )

instance Hashable CreateCase

instance NFData CreateCase

instance ToHeaders CreateCase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSSupport_20130415.CreateCase" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCase where
  toJSON CreateCase' {..} =
    object
      ( catMaybes
          [ ("serviceCode" .=) <$> _ccServiceCode,
            ("categoryCode" .=) <$> _ccCategoryCode,
            ("ccEmailAddresses" .=) <$> _ccCcEmailAddresses,
            ("issueType" .=) <$> _ccIssueType,
            ("attachmentSetId" .=) <$> _ccAttachmentSetId,
            ("severityCode" .=) <$> _ccSeverityCode,
            ("language" .=) <$> _ccLanguage,
            Just ("subject" .= _ccSubject),
            Just ("communicationBody" .= _ccCommunicationBody)
          ]
      )

instance ToPath CreateCase where
  toPath = const "/"

instance ToQuery CreateCase where
  toQuery = const mempty

-- | The AWS Support case ID returned by a successful completion of the 'CreateCase' operation.
--
--
--
-- /See:/ 'createCaseResponse' smart constructor.
data CreateCaseResponse = CreateCaseResponse'
  { _ccrrsCaseId ::
      !(Maybe Text),
    _ccrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsCaseId' - The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string in the following format: case-/12345678910-2013-c4c1d2bf33c5cf47/
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createCaseResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateCaseResponse
createCaseResponse pResponseStatus_ =
  CreateCaseResponse'
    { _ccrrsCaseId = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string in the following format: case-/12345678910-2013-c4c1d2bf33c5cf47/
ccrrsCaseId :: Lens' CreateCaseResponse (Maybe Text)
ccrrsCaseId = lens _ccrrsCaseId (\s a -> s {_ccrrsCaseId = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateCaseResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateCaseResponse
