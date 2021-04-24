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
-- Module      : Network.AWS.EMR.GetStudioSessionMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches mapping details for the specified Amazon EMR Studio and identity (user or group).
module Network.AWS.EMR.GetStudioSessionMapping
  ( -- * Creating a Request
    getStudioSessionMapping,
    GetStudioSessionMapping,

    -- * Request Lenses
    gssmIdentityName,
    gssmIdentityId,
    gssmStudioId,
    gssmIdentityType,

    -- * Destructuring the Response
    getStudioSessionMappingResponse,
    GetStudioSessionMappingResponse,

    -- * Response Lenses
    gssmrrsSessionMapping,
    gssmrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getStudioSessionMapping' smart constructor.
data GetStudioSessionMapping = GetStudioSessionMapping'
  { _gssmIdentityName ::
      !(Maybe Text),
    _gssmIdentityId ::
      !(Maybe Text),
    _gssmStudioId :: !Text,
    _gssmIdentityType ::
      !IdentityType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetStudioSessionMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssmIdentityName' - The name of the user or group to fetch. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName UserName> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName DisplayName> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
--
-- * 'gssmIdentityId' - The globally unique identifier (GUID) of the user or group. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserId> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId GroupId> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
--
-- * 'gssmStudioId' - The ID of the Amazon EMR Studio.
--
-- * 'gssmIdentityType' - Specifies whether the identity to fetch is a user or a group.
getStudioSessionMapping ::
  -- | 'gssmStudioId'
  Text ->
  -- | 'gssmIdentityType'
  IdentityType ->
  GetStudioSessionMapping
getStudioSessionMapping pStudioId_ pIdentityType_ =
  GetStudioSessionMapping'
    { _gssmIdentityName =
        Nothing,
      _gssmIdentityId = Nothing,
      _gssmStudioId = pStudioId_,
      _gssmIdentityType = pIdentityType_
    }

-- | The name of the user or group to fetch. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName UserName> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName DisplayName> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
gssmIdentityName :: Lens' GetStudioSessionMapping (Maybe Text)
gssmIdentityName = lens _gssmIdentityName (\s a -> s {_gssmIdentityName = a})

-- | The globally unique identifier (GUID) of the user or group. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserId> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId GroupId> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
gssmIdentityId :: Lens' GetStudioSessionMapping (Maybe Text)
gssmIdentityId = lens _gssmIdentityId (\s a -> s {_gssmIdentityId = a})

-- | The ID of the Amazon EMR Studio.
gssmStudioId :: Lens' GetStudioSessionMapping Text
gssmStudioId = lens _gssmStudioId (\s a -> s {_gssmStudioId = a})

-- | Specifies whether the identity to fetch is a user or a group.
gssmIdentityType :: Lens' GetStudioSessionMapping IdentityType
gssmIdentityType = lens _gssmIdentityType (\s a -> s {_gssmIdentityType = a})

instance AWSRequest GetStudioSessionMapping where
  type
    Rs GetStudioSessionMapping =
      GetStudioSessionMappingResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          GetStudioSessionMappingResponse'
            <$> (x .?> "SessionMapping") <*> (pure (fromEnum s))
      )

instance Hashable GetStudioSessionMapping

instance NFData GetStudioSessionMapping

instance ToHeaders GetStudioSessionMapping where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.GetStudioSessionMapping" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetStudioSessionMapping where
  toJSON GetStudioSessionMapping' {..} =
    object
      ( catMaybes
          [ ("IdentityName" .=) <$> _gssmIdentityName,
            ("IdentityId" .=) <$> _gssmIdentityId,
            Just ("StudioId" .= _gssmStudioId),
            Just ("IdentityType" .= _gssmIdentityType)
          ]
      )

instance ToPath GetStudioSessionMapping where
  toPath = const "/"

instance ToQuery GetStudioSessionMapping where
  toQuery = const mempty

-- | /See:/ 'getStudioSessionMappingResponse' smart constructor.
data GetStudioSessionMappingResponse = GetStudioSessionMappingResponse'
  { _gssmrrsSessionMapping ::
      !( Maybe
           SessionMappingDetail
       ),
    _gssmrrsResponseStatus ::
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

-- | Creates a value of 'GetStudioSessionMappingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssmrrsSessionMapping' - The session mapping details for the specified Amazon EMR Studio and identity, including session policy ARN and creation time.
--
-- * 'gssmrrsResponseStatus' - -- | The response status code.
getStudioSessionMappingResponse ::
  -- | 'gssmrrsResponseStatus'
  Int ->
  GetStudioSessionMappingResponse
getStudioSessionMappingResponse pResponseStatus_ =
  GetStudioSessionMappingResponse'
    { _gssmrrsSessionMapping =
        Nothing,
      _gssmrrsResponseStatus = pResponseStatus_
    }

-- | The session mapping details for the specified Amazon EMR Studio and identity, including session policy ARN and creation time.
gssmrrsSessionMapping :: Lens' GetStudioSessionMappingResponse (Maybe SessionMappingDetail)
gssmrrsSessionMapping = lens _gssmrrsSessionMapping (\s a -> s {_gssmrrsSessionMapping = a})

-- | -- | The response status code.
gssmrrsResponseStatus :: Lens' GetStudioSessionMappingResponse Int
gssmrrsResponseStatus = lens _gssmrrsResponseStatus (\s a -> s {_gssmrrsResponseStatus = a})

instance NFData GetStudioSessionMappingResponse
