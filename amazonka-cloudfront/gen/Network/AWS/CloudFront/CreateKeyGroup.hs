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
-- Module      : Network.AWS.CloudFront.CreateKeyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a key group that you can use with <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html CloudFront signed URLs and signed cookies> .
--
--
-- To create a key group, you must specify at least one public key for the key group. After you create a key group, you can reference it from one or more cache behaviors. When you reference a key group in a cache behavior, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
module Network.AWS.CloudFront.CreateKeyGroup
  ( -- * Creating a Request
    createKeyGroup,
    CreateKeyGroup,

    -- * Request Lenses
    ckgKeyGroupConfig,

    -- * Destructuring the Response
    createKeyGroupResponse,
    CreateKeyGroupResponse,

    -- * Response Lenses
    ckgrrsETag,
    ckgrrsKeyGroup,
    ckgrrsLocation,
    ckgrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createKeyGroup' smart constructor.
newtype CreateKeyGroup = CreateKeyGroup'
  { _ckgKeyGroupConfig ::
      KeyGroupConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckgKeyGroupConfig' - A key group configuration.
createKeyGroup ::
  -- | 'ckgKeyGroupConfig'
  KeyGroupConfig ->
  CreateKeyGroup
createKeyGroup pKeyGroupConfig_ =
  CreateKeyGroup'
    { _ckgKeyGroupConfig =
        pKeyGroupConfig_
    }

-- | A key group configuration.
ckgKeyGroupConfig :: Lens' CreateKeyGroup KeyGroupConfig
ckgKeyGroupConfig = lens _ckgKeyGroupConfig (\s a -> s {_ckgKeyGroupConfig = a})

instance AWSRequest CreateKeyGroup where
  type Rs CreateKeyGroup = CreateKeyGroupResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateKeyGroupResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateKeyGroup

instance NFData CreateKeyGroup

instance ToElement CreateKeyGroup where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}KeyGroupConfig"
      . _ckgKeyGroupConfig

instance ToHeaders CreateKeyGroup where
  toHeaders = const mempty

instance ToPath CreateKeyGroup where
  toPath = const "/2020-05-31/key-group"

instance ToQuery CreateKeyGroup where
  toQuery = const mempty

-- | /See:/ 'createKeyGroupResponse' smart constructor.
data CreateKeyGroupResponse = CreateKeyGroupResponse'
  { _ckgrrsETag ::
      !(Maybe Text),
    _ckgrrsKeyGroup ::
      !(Maybe KeyGroup),
    _ckgrrsLocation ::
      !(Maybe Text),
    _ckgrrsResponseStatus ::
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

-- | Creates a value of 'CreateKeyGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckgrrsETag' - The identifier for this version of the key group.
--
-- * 'ckgrrsKeyGroup' - The key group that was just created.
--
-- * 'ckgrrsLocation' - The URL of the key group.
--
-- * 'ckgrrsResponseStatus' - -- | The response status code.
createKeyGroupResponse ::
  -- | 'ckgrrsResponseStatus'
  Int ->
  CreateKeyGroupResponse
createKeyGroupResponse pResponseStatus_ =
  CreateKeyGroupResponse'
    { _ckgrrsETag = Nothing,
      _ckgrrsKeyGroup = Nothing,
      _ckgrrsLocation = Nothing,
      _ckgrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for this version of the key group.
ckgrrsETag :: Lens' CreateKeyGroupResponse (Maybe Text)
ckgrrsETag = lens _ckgrrsETag (\s a -> s {_ckgrrsETag = a})

-- | The key group that was just created.
ckgrrsKeyGroup :: Lens' CreateKeyGroupResponse (Maybe KeyGroup)
ckgrrsKeyGroup = lens _ckgrrsKeyGroup (\s a -> s {_ckgrrsKeyGroup = a})

-- | The URL of the key group.
ckgrrsLocation :: Lens' CreateKeyGroupResponse (Maybe Text)
ckgrrsLocation = lens _ckgrrsLocation (\s a -> s {_ckgrrsLocation = a})

-- | -- | The response status code.
ckgrrsResponseStatus :: Lens' CreateKeyGroupResponse Int
ckgrrsResponseStatus = lens _ckgrrsResponseStatus (\s a -> s {_ckgrrsResponseStatus = a})

instance NFData CreateKeyGroupResponse
