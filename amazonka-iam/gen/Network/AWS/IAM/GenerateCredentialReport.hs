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
-- Module      : Network.AWS.IAM.GenerateCredentialReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a credential report for the AWS account. For more information about the credential report, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Getting credential reports> in the /IAM User Guide/ .
module Network.AWS.IAM.GenerateCredentialReport
  ( -- * Creating a Request
    generateCredentialReport,
    GenerateCredentialReport,

    -- * Destructuring the Response
    generateCredentialReportResponse,
    GenerateCredentialReportResponse,

    -- * Response Lenses
    genrsState,
    genrsDescription,
    genrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'generateCredentialReport' smart constructor.
data GenerateCredentialReport = GenerateCredentialReport'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GenerateCredentialReport' with the minimum fields required to make a request.
generateCredentialReport ::
  GenerateCredentialReport
generateCredentialReport = GenerateCredentialReport'

instance AWSRequest GenerateCredentialReport where
  type
    Rs GenerateCredentialReport =
      GenerateCredentialReportResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GenerateCredentialReportResult"
      ( \s h x ->
          GenerateCredentialReportResponse'
            <$> (x .@? "State")
            <*> (x .@? "Description")
            <*> (pure (fromEnum s))
      )

instance Hashable GenerateCredentialReport

instance NFData GenerateCredentialReport

instance ToHeaders GenerateCredentialReport where
  toHeaders = const mempty

instance ToPath GenerateCredentialReport where
  toPath = const "/"

instance ToQuery GenerateCredentialReport where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("GenerateCredentialReport" :: ByteString),
            "Version" =: ("2010-05-08" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'GenerateCredentialReport' request.
--
--
--
-- /See:/ 'generateCredentialReportResponse' smart constructor.
data GenerateCredentialReportResponse = GenerateCredentialReportResponse'
  { _genrsState ::
      !( Maybe
           ReportStateType
       ),
    _genrsDescription ::
      !( Maybe
           Text
       ),
    _genrsResponseStatus ::
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

-- | Creates a value of 'GenerateCredentialReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'genrsState' - Information about the state of the credential report.
--
-- * 'genrsDescription' - Information about the credential report.
--
-- * 'genrsResponseStatus' - -- | The response status code.
generateCredentialReportResponse ::
  -- | 'genrsResponseStatus'
  Int ->
  GenerateCredentialReportResponse
generateCredentialReportResponse pResponseStatus_ =
  GenerateCredentialReportResponse'
    { _genrsState =
        Nothing,
      _genrsDescription = Nothing,
      _genrsResponseStatus = pResponseStatus_
    }

-- | Information about the state of the credential report.
genrsState :: Lens' GenerateCredentialReportResponse (Maybe ReportStateType)
genrsState = lens _genrsState (\s a -> s {_genrsState = a})

-- | Information about the credential report.
genrsDescription :: Lens' GenerateCredentialReportResponse (Maybe Text)
genrsDescription = lens _genrsDescription (\s a -> s {_genrsDescription = a})

-- | -- | The response status code.
genrsResponseStatus :: Lens' GenerateCredentialReportResponse Int
genrsResponseStatus = lens _genrsResponseStatus (\s a -> s {_genrsResponseStatus = a})

instance NFData GenerateCredentialReportResponse
