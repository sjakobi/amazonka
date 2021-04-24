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
-- Module      : Network.AWS.EC2.GetEBSDefaultKMSKeyId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the default customer master key (CMK) for EBS encryption by default for your account in this Region. You can change the default CMK for encryption by default using 'ModifyEbsDefaultKmsKeyId' or 'ResetEbsDefaultKmsKeyId' .
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.GetEBSDefaultKMSKeyId
  ( -- * Creating a Request
    getEBSDefaultKMSKeyId,
    GetEBSDefaultKMSKeyId,

    -- * Request Lenses
    gedkkiDryRun,

    -- * Destructuring the Response
    getEBSDefaultKMSKeyIdResponse,
    GetEBSDefaultKMSKeyIdResponse,

    -- * Response Lenses
    gedkkirrsKMSKeyId,
    gedkkirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEBSDefaultKMSKeyId' smart constructor.
newtype GetEBSDefaultKMSKeyId = GetEBSDefaultKMSKeyId'
  { _gedkkiDryRun ::
      Maybe Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetEBSDefaultKMSKeyId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gedkkiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
getEBSDefaultKMSKeyId ::
  GetEBSDefaultKMSKeyId
getEBSDefaultKMSKeyId =
  GetEBSDefaultKMSKeyId' {_gedkkiDryRun = Nothing}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gedkkiDryRun :: Lens' GetEBSDefaultKMSKeyId (Maybe Bool)
gedkkiDryRun = lens _gedkkiDryRun (\s a -> s {_gedkkiDryRun = a})

instance AWSRequest GetEBSDefaultKMSKeyId where
  type
    Rs GetEBSDefaultKMSKeyId =
      GetEBSDefaultKMSKeyIdResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetEBSDefaultKMSKeyIdResponse'
            <$> (x .@? "kmsKeyId") <*> (pure (fromEnum s))
      )

instance Hashable GetEBSDefaultKMSKeyId

instance NFData GetEBSDefaultKMSKeyId

instance ToHeaders GetEBSDefaultKMSKeyId where
  toHeaders = const mempty

instance ToPath GetEBSDefaultKMSKeyId where
  toPath = const "/"

instance ToQuery GetEBSDefaultKMSKeyId where
  toQuery GetEBSDefaultKMSKeyId' {..} =
    mconcat
      [ "Action" =: ("GetEbsDefaultKmsKeyId" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _gedkkiDryRun
      ]

-- | /See:/ 'getEBSDefaultKMSKeyIdResponse' smart constructor.
data GetEBSDefaultKMSKeyIdResponse = GetEBSDefaultKMSKeyIdResponse'
  { _gedkkirrsKMSKeyId ::
      !( Maybe
           Text
       ),
    _gedkkirrsResponseStatus ::
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

-- | Creates a value of 'GetEBSDefaultKMSKeyIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gedkkirrsKMSKeyId' - The Amazon Resource Name (ARN) of the default CMK for encryption by default.
--
-- * 'gedkkirrsResponseStatus' - -- | The response status code.
getEBSDefaultKMSKeyIdResponse ::
  -- | 'gedkkirrsResponseStatus'
  Int ->
  GetEBSDefaultKMSKeyIdResponse
getEBSDefaultKMSKeyIdResponse pResponseStatus_ =
  GetEBSDefaultKMSKeyIdResponse'
    { _gedkkirrsKMSKeyId =
        Nothing,
      _gedkkirrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the default CMK for encryption by default.
gedkkirrsKMSKeyId :: Lens' GetEBSDefaultKMSKeyIdResponse (Maybe Text)
gedkkirrsKMSKeyId = lens _gedkkirrsKMSKeyId (\s a -> s {_gedkkirrsKMSKeyId = a})

-- | -- | The response status code.
gedkkirrsResponseStatus :: Lens' GetEBSDefaultKMSKeyIdResponse Int
gedkkirrsResponseStatus = lens _gedkkirrsResponseStatus (\s a -> s {_gedkkirrsResponseStatus = a})

instance NFData GetEBSDefaultKMSKeyIdResponse
