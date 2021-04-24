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
-- Module      : Network.AWS.AWSHealth.DescribeHealthServiceStatusForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation provides status information on enabling or disabling AWS Health to work with your organization. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's management account.
module Network.AWS.AWSHealth.DescribeHealthServiceStatusForOrganization
  ( -- * Creating a Request
    describeHealthServiceStatusForOrganization,
    DescribeHealthServiceStatusForOrganization,

    -- * Destructuring the Response
    describeHealthServiceStatusForOrganizationResponse,
    DescribeHealthServiceStatusForOrganizationResponse,

    -- * Response Lenses
    dhssforrsHealthServiceAccessStatusForOrganization,
    dhssforrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHealthServiceStatusForOrganization' smart constructor.
data DescribeHealthServiceStatusForOrganization = DescribeHealthServiceStatusForOrganization'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHealthServiceStatusForOrganization' with the minimum fields required to make a request.
describeHealthServiceStatusForOrganization ::
  DescribeHealthServiceStatusForOrganization
describeHealthServiceStatusForOrganization =
  DescribeHealthServiceStatusForOrganization'

instance
  AWSRequest
    DescribeHealthServiceStatusForOrganization
  where
  type
    Rs DescribeHealthServiceStatusForOrganization =
      DescribeHealthServiceStatusForOrganizationResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeHealthServiceStatusForOrganizationResponse'
            <$> (x .?> "healthServiceAccessStatusForOrganization")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeHealthServiceStatusForOrganization

instance
  NFData
    DescribeHealthServiceStatusForOrganization

instance
  ToHeaders
    DescribeHealthServiceStatusForOrganization
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSHealth_20160804.DescribeHealthServiceStatusForOrganization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeHealthServiceStatusForOrganization
  where
  toJSON = const (Object mempty)

instance
  ToPath
    DescribeHealthServiceStatusForOrganization
  where
  toPath = const "/"

instance
  ToQuery
    DescribeHealthServiceStatusForOrganization
  where
  toQuery = const mempty

-- | /See:/ 'describeHealthServiceStatusForOrganizationResponse' smart constructor.
data DescribeHealthServiceStatusForOrganizationResponse = DescribeHealthServiceStatusForOrganizationResponse'
  { _dhssforrsHealthServiceAccessStatusForOrganization ::
      !( Maybe
           Text
       ),
    _dhssforrsResponseStatus ::
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

-- | Creates a value of 'DescribeHealthServiceStatusForOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhssforrsHealthServiceAccessStatusForOrganization' - Information about the status of enabling or disabling AWS Health Organizational View in your organization. Valid values are @ENABLED | DISABLED | PENDING@ .
--
-- * 'dhssforrsResponseStatus' - -- | The response status code.
describeHealthServiceStatusForOrganizationResponse ::
  -- | 'dhssforrsResponseStatus'
  Int ->
  DescribeHealthServiceStatusForOrganizationResponse
describeHealthServiceStatusForOrganizationResponse
  pResponseStatus_ =
    DescribeHealthServiceStatusForOrganizationResponse'
      { _dhssforrsHealthServiceAccessStatusForOrganization =
          Nothing,
        _dhssforrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the status of enabling or disabling AWS Health Organizational View in your organization. Valid values are @ENABLED | DISABLED | PENDING@ .
dhssforrsHealthServiceAccessStatusForOrganization :: Lens' DescribeHealthServiceStatusForOrganizationResponse (Maybe Text)
dhssforrsHealthServiceAccessStatusForOrganization = lens _dhssforrsHealthServiceAccessStatusForOrganization (\s a -> s {_dhssforrsHealthServiceAccessStatusForOrganization = a})

-- | -- | The response status code.
dhssforrsResponseStatus :: Lens' DescribeHealthServiceStatusForOrganizationResponse Int
dhssforrsResponseStatus = lens _dhssforrsResponseStatus (\s a -> s {_dhssforrsResponseStatus = a})

instance
  NFData
    DescribeHealthServiceStatusForOrganizationResponse
