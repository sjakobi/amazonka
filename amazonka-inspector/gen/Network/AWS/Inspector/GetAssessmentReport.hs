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
-- Module      : Network.AWS.Inspector.GetAssessmentReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces an assessment report that includes detailed and comprehensive results of a specified assessment run.
module Network.AWS.Inspector.GetAssessmentReport
  ( -- * Creating a Request
    getAssessmentReport,
    GetAssessmentReport,

    -- * Request Lenses
    garAssessmentRunARN,
    garReportFileFormat,
    garReportType,

    -- * Destructuring the Response
    getAssessmentReportResponse,
    GetAssessmentReportResponse,

    -- * Response Lenses
    garrrsUrl,
    garrrsResponseStatus,
    garrrsStatus,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAssessmentReport' smart constructor.
data GetAssessmentReport = GetAssessmentReport'
  { _garAssessmentRunARN ::
      !Text,
    _garReportFileFormat ::
      !ReportFileFormat,
    _garReportType :: !ReportType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAssessmentReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garAssessmentRunARN' - The ARN that specifies the assessment run for which you want to generate a report.
--
-- * 'garReportFileFormat' - Specifies the file format (html or pdf) of the assessment report that you want to generate.
--
-- * 'garReportType' - Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see <https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html Assessment Reports> .
getAssessmentReport ::
  -- | 'garAssessmentRunARN'
  Text ->
  -- | 'garReportFileFormat'
  ReportFileFormat ->
  -- | 'garReportType'
  ReportType ->
  GetAssessmentReport
getAssessmentReport
  pAssessmentRunARN_
  pReportFileFormat_
  pReportType_ =
    GetAssessmentReport'
      { _garAssessmentRunARN =
          pAssessmentRunARN_,
        _garReportFileFormat = pReportFileFormat_,
        _garReportType = pReportType_
      }

-- | The ARN that specifies the assessment run for which you want to generate a report.
garAssessmentRunARN :: Lens' GetAssessmentReport Text
garAssessmentRunARN = lens _garAssessmentRunARN (\s a -> s {_garAssessmentRunARN = a})

-- | Specifies the file format (html or pdf) of the assessment report that you want to generate.
garReportFileFormat :: Lens' GetAssessmentReport ReportFileFormat
garReportFileFormat = lens _garReportFileFormat (\s a -> s {_garReportFileFormat = a})

-- | Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see <https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html Assessment Reports> .
garReportType :: Lens' GetAssessmentReport ReportType
garReportType = lens _garReportType (\s a -> s {_garReportType = a})

instance AWSRequest GetAssessmentReport where
  type
    Rs GetAssessmentReport =
      GetAssessmentReportResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          GetAssessmentReportResponse'
            <$> (x .?> "url")
            <*> (pure (fromEnum s))
            <*> (x .:> "status")
      )

instance Hashable GetAssessmentReport

instance NFData GetAssessmentReport

instance ToHeaders GetAssessmentReport where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.GetAssessmentReport" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAssessmentReport where
  toJSON GetAssessmentReport' {..} =
    object
      ( catMaybes
          [ Just ("assessmentRunArn" .= _garAssessmentRunARN),
            Just ("reportFileFormat" .= _garReportFileFormat),
            Just ("reportType" .= _garReportType)
          ]
      )

instance ToPath GetAssessmentReport where
  toPath = const "/"

instance ToQuery GetAssessmentReport where
  toQuery = const mempty

-- | /See:/ 'getAssessmentReportResponse' smart constructor.
data GetAssessmentReportResponse = GetAssessmentReportResponse'
  { _garrrsUrl ::
      !(Maybe Text),
    _garrrsResponseStatus ::
      !Int,
    _garrrsStatus ::
      !ReportStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAssessmentReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrrsUrl' - Specifies the URL where you can find the generated assessment report. This parameter is only returned if the report is successfully generated.
--
-- * 'garrrsResponseStatus' - -- | The response status code.
--
-- * 'garrrsStatus' - Specifies the status of the request to generate an assessment report.
getAssessmentReportResponse ::
  -- | 'garrrsResponseStatus'
  Int ->
  -- | 'garrrsStatus'
  ReportStatus ->
  GetAssessmentReportResponse
getAssessmentReportResponse pResponseStatus_ pStatus_ =
  GetAssessmentReportResponse'
    { _garrrsUrl = Nothing,
      _garrrsResponseStatus = pResponseStatus_,
      _garrrsStatus = pStatus_
    }

-- | Specifies the URL where you can find the generated assessment report. This parameter is only returned if the report is successfully generated.
garrrsUrl :: Lens' GetAssessmentReportResponse (Maybe Text)
garrrsUrl = lens _garrrsUrl (\s a -> s {_garrrsUrl = a})

-- | -- | The response status code.
garrrsResponseStatus :: Lens' GetAssessmentReportResponse Int
garrrsResponseStatus = lens _garrrsResponseStatus (\s a -> s {_garrrsResponseStatus = a})

-- | Specifies the status of the request to generate an assessment report.
garrrsStatus :: Lens' GetAssessmentReportResponse ReportStatus
garrrsStatus = lens _garrrsStatus (\s a -> s {_garrrsStatus = a})

instance NFData GetAssessmentReportResponse
