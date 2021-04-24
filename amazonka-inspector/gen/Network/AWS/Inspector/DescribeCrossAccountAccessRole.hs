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
-- Module      : Network.AWS.Inspector.DescribeCrossAccountAccessRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the IAM role that enables Amazon Inspector to access your AWS account.
module Network.AWS.Inspector.DescribeCrossAccountAccessRole
  ( -- * Creating a Request
    describeCrossAccountAccessRole,
    DescribeCrossAccountAccessRole,

    -- * Destructuring the Response
    describeCrossAccountAccessRoleResponse,
    DescribeCrossAccountAccessRoleResponse,

    -- * Response Lenses
    dcaarrrsResponseStatus,
    dcaarrrsRoleARN,
    dcaarrrsValid,
    dcaarrrsRegisteredAt,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCrossAccountAccessRole' smart constructor.
data DescribeCrossAccountAccessRole = DescribeCrossAccountAccessRole'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCrossAccountAccessRole' with the minimum fields required to make a request.
describeCrossAccountAccessRole ::
  DescribeCrossAccountAccessRole
describeCrossAccountAccessRole =
  DescribeCrossAccountAccessRole'

instance AWSRequest DescribeCrossAccountAccessRole where
  type
    Rs DescribeCrossAccountAccessRole =
      DescribeCrossAccountAccessRoleResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          DescribeCrossAccountAccessRoleResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "roleArn")
            <*> (x .:> "valid")
            <*> (x .:> "registeredAt")
      )

instance Hashable DescribeCrossAccountAccessRole

instance NFData DescribeCrossAccountAccessRole

instance ToHeaders DescribeCrossAccountAccessRole where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.DescribeCrossAccountAccessRole" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCrossAccountAccessRole where
  toJSON = const (Object mempty)

instance ToPath DescribeCrossAccountAccessRole where
  toPath = const "/"

instance ToQuery DescribeCrossAccountAccessRole where
  toQuery = const mempty

-- | /See:/ 'describeCrossAccountAccessRoleResponse' smart constructor.
data DescribeCrossAccountAccessRoleResponse = DescribeCrossAccountAccessRoleResponse'
  { _dcaarrrsResponseStatus ::
      !Int,
    _dcaarrrsRoleARN ::
      !Text,
    _dcaarrrsValid ::
      !Bool,
    _dcaarrrsRegisteredAt ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCrossAccountAccessRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaarrrsResponseStatus' - -- | The response status code.
--
-- * 'dcaarrrsRoleARN' - The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS account.
--
-- * 'dcaarrrsValid' - A Boolean value that specifies whether the IAM role has the necessary policies attached to enable Amazon Inspector to access your AWS account.
--
-- * 'dcaarrrsRegisteredAt' - The date when the cross-account access role was registered.
describeCrossAccountAccessRoleResponse ::
  -- | 'dcaarrrsResponseStatus'
  Int ->
  -- | 'dcaarrrsRoleARN'
  Text ->
  -- | 'dcaarrrsValid'
  Bool ->
  -- | 'dcaarrrsRegisteredAt'
  UTCTime ->
  DescribeCrossAccountAccessRoleResponse
describeCrossAccountAccessRoleResponse
  pResponseStatus_
  pRoleARN_
  pValid_
  pRegisteredAt_ =
    DescribeCrossAccountAccessRoleResponse'
      { _dcaarrrsResponseStatus =
          pResponseStatus_,
        _dcaarrrsRoleARN = pRoleARN_,
        _dcaarrrsValid = pValid_,
        _dcaarrrsRegisteredAt =
          _Time # pRegisteredAt_
      }

-- | -- | The response status code.
dcaarrrsResponseStatus :: Lens' DescribeCrossAccountAccessRoleResponse Int
dcaarrrsResponseStatus = lens _dcaarrrsResponseStatus (\s a -> s {_dcaarrrsResponseStatus = a})

-- | The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS account.
dcaarrrsRoleARN :: Lens' DescribeCrossAccountAccessRoleResponse Text
dcaarrrsRoleARN = lens _dcaarrrsRoleARN (\s a -> s {_dcaarrrsRoleARN = a})

-- | A Boolean value that specifies whether the IAM role has the necessary policies attached to enable Amazon Inspector to access your AWS account.
dcaarrrsValid :: Lens' DescribeCrossAccountAccessRoleResponse Bool
dcaarrrsValid = lens _dcaarrrsValid (\s a -> s {_dcaarrrsValid = a})

-- | The date when the cross-account access role was registered.
dcaarrrsRegisteredAt :: Lens' DescribeCrossAccountAccessRoleResponse UTCTime
dcaarrrsRegisteredAt = lens _dcaarrrsRegisteredAt (\s a -> s {_dcaarrrsRegisteredAt = a}) . _Time

instance
  NFData
    DescribeCrossAccountAccessRoleResponse
