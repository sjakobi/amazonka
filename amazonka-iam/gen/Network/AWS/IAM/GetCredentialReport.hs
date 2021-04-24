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
-- Module      : Network.AWS.IAM.GetCredentialReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a credential report for the AWS account. For more information about the credential report, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Getting credential reports> in the /IAM User Guide/ .
module Network.AWS.IAM.GetCredentialReport
  ( -- * Creating a Request
    getCredentialReport,
    GetCredentialReport,

    -- * Destructuring the Response
    getCredentialReportResponse,
    GetCredentialReportResponse,

    -- * Response Lenses
    gcrrrsReportFormat,
    gcrrrsGeneratedTime,
    gcrrrsContent,
    gcrrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCredentialReport' smart constructor.
data GetCredentialReport = GetCredentialReport'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCredentialReport' with the minimum fields required to make a request.
getCredentialReport ::
  GetCredentialReport
getCredentialReport = GetCredentialReport'

instance AWSRequest GetCredentialReport where
  type
    Rs GetCredentialReport =
      GetCredentialReportResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetCredentialReportResult"
      ( \s h x ->
          GetCredentialReportResponse'
            <$> (x .@? "ReportFormat")
            <*> (x .@? "GeneratedTime")
            <*> (x .@? "Content")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCredentialReport

instance NFData GetCredentialReport

instance ToHeaders GetCredentialReport where
  toHeaders = const mempty

instance ToPath GetCredentialReport where
  toPath = const "/"

instance ToQuery GetCredentialReport where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("GetCredentialReport" :: ByteString),
            "Version" =: ("2010-05-08" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'GetCredentialReport' request.
--
--
--
-- /See:/ 'getCredentialReportResponse' smart constructor.
data GetCredentialReportResponse = GetCredentialReportResponse'
  { _gcrrrsReportFormat ::
      !( Maybe
           ReportFormatType
       ),
    _gcrrrsGeneratedTime ::
      !( Maybe
           ISO8601
       ),
    _gcrrrsContent ::
      !(Maybe Base64),
    _gcrrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCredentialReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrrsReportFormat' - The format (MIME type) of the credential report.
--
-- * 'gcrrrsGeneratedTime' - The date and time when the credential report was created, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> .
--
-- * 'gcrrrsContent' - Contains the credential report. The report is Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'gcrrrsResponseStatus' - -- | The response status code.
getCredentialReportResponse ::
  -- | 'gcrrrsResponseStatus'
  Int ->
  GetCredentialReportResponse
getCredentialReportResponse pResponseStatus_ =
  GetCredentialReportResponse'
    { _gcrrrsReportFormat =
        Nothing,
      _gcrrrsGeneratedTime = Nothing,
      _gcrrrsContent = Nothing,
      _gcrrrsResponseStatus = pResponseStatus_
    }

-- | The format (MIME type) of the credential report.
gcrrrsReportFormat :: Lens' GetCredentialReportResponse (Maybe ReportFormatType)
gcrrrsReportFormat = lens _gcrrrsReportFormat (\s a -> s {_gcrrrsReportFormat = a})

-- | The date and time when the credential report was created, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> .
gcrrrsGeneratedTime :: Lens' GetCredentialReportResponse (Maybe UTCTime)
gcrrrsGeneratedTime = lens _gcrrrsGeneratedTime (\s a -> s {_gcrrrsGeneratedTime = a}) . mapping _Time

-- | Contains the credential report. The report is Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gcrrrsContent :: Lens' GetCredentialReportResponse (Maybe ByteString)
gcrrrsContent = lens _gcrrrsContent (\s a -> s {_gcrrrsContent = a}) . mapping _Base64

-- | -- | The response status code.
gcrrrsResponseStatus :: Lens' GetCredentialReportResponse Int
gcrrrsResponseStatus = lens _gcrrrsResponseStatus (\s a -> s {_gcrrrsResponseStatus = a})

instance NFData GetCredentialReportResponse
