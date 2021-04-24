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
-- Module      : Network.AWS.STS.GetCallerIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about the IAM user or role whose credentials are used to call the operation.
module Network.AWS.STS.GetCallerIdentity
  ( -- * Creating a Request
    getCallerIdentity,
    GetCallerIdentity,

    -- * Destructuring the Response
    getCallerIdentityResponse,
    GetCallerIdentityResponse,

    -- * Response Lenses
    gcirrsARN,
    gcirrsUserId,
    gcirrsAccount,
    gcirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.STS.Types

-- | /See:/ 'getCallerIdentity' smart constructor.
data GetCallerIdentity = GetCallerIdentity'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCallerIdentity' with the minimum fields required to make a request.
getCallerIdentity ::
  GetCallerIdentity
getCallerIdentity = GetCallerIdentity'

instance AWSRequest GetCallerIdentity where
  type Rs GetCallerIdentity = GetCallerIdentityResponse
  request = postQuery sts
  response =
    receiveXMLWrapper
      "GetCallerIdentityResult"
      ( \s h x ->
          GetCallerIdentityResponse'
            <$> (x .@? "Arn")
            <*> (x .@? "UserId")
            <*> (x .@? "Account")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCallerIdentity

instance NFData GetCallerIdentity

instance ToHeaders GetCallerIdentity where
  toHeaders = const mempty

instance ToPath GetCallerIdentity where
  toPath = const "/"

instance ToQuery GetCallerIdentity where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("GetCallerIdentity" :: ByteString),
            "Version" =: ("2011-06-15" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'GetCallerIdentity' request, including information about the entity making the request.
--
--
--
-- /See:/ 'getCallerIdentityResponse' smart constructor.
data GetCallerIdentityResponse = GetCallerIdentityResponse'
  { _gcirrsARN ::
      !(Maybe Text),
    _gcirrsUserId ::
      !(Maybe Text),
    _gcirrsAccount ::
      !(Maybe Text),
    _gcirrsResponseStatus ::
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

-- | Creates a value of 'GetCallerIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcirrsARN' - The AWS ARN associated with the calling entity.
--
-- * 'gcirrsUserId' - The unique identifier of the calling entity. The exact value depends on the type of entity that is making the call. The values returned are those listed in the __aws:userid__ column in the <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable Principal table> found on the __Policy Variables__ reference page in the /IAM User Guide/ .
--
-- * 'gcirrsAccount' - The AWS account ID number of the account that owns or contains the calling entity.
--
-- * 'gcirrsResponseStatus' - -- | The response status code.
getCallerIdentityResponse ::
  -- | 'gcirrsResponseStatus'
  Int ->
  GetCallerIdentityResponse
getCallerIdentityResponse pResponseStatus_ =
  GetCallerIdentityResponse'
    { _gcirrsARN = Nothing,
      _gcirrsUserId = Nothing,
      _gcirrsAccount = Nothing,
      _gcirrsResponseStatus = pResponseStatus_
    }

-- | The AWS ARN associated with the calling entity.
gcirrsARN :: Lens' GetCallerIdentityResponse (Maybe Text)
gcirrsARN = lens _gcirrsARN (\s a -> s {_gcirrsARN = a})

-- | The unique identifier of the calling entity. The exact value depends on the type of entity that is making the call. The values returned are those listed in the __aws:userid__ column in the <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable Principal table> found on the __Policy Variables__ reference page in the /IAM User Guide/ .
gcirrsUserId :: Lens' GetCallerIdentityResponse (Maybe Text)
gcirrsUserId = lens _gcirrsUserId (\s a -> s {_gcirrsUserId = a})

-- | The AWS account ID number of the account that owns or contains the calling entity.
gcirrsAccount :: Lens' GetCallerIdentityResponse (Maybe Text)
gcirrsAccount = lens _gcirrsAccount (\s a -> s {_gcirrsAccount = a})

-- | -- | The response status code.
gcirrsResponseStatus :: Lens' GetCallerIdentityResponse Int
gcirrsResponseStatus = lens _gcirrsResponseStatus (\s a -> s {_gcirrsResponseStatus = a})

instance NFData GetCallerIdentityResponse
