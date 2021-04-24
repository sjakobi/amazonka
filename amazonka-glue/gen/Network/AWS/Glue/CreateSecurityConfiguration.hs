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
-- Module      : Network.AWS.Glue.CreateSecurityConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new security configuration. A security configuration is a set of security properties that can be used by AWS Glue. You can use a security configuration to encrypt data at rest. For information about using security configurations in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html Encrypting Data Written by Crawlers, Jobs, and Development Endpoints> .
module Network.AWS.Glue.CreateSecurityConfiguration
  ( -- * Creating a Request
    createSecurityConfiguration,
    CreateSecurityConfiguration,

    -- * Request Lenses
    cscName,
    cscEncryptionConfiguration,

    -- * Destructuring the Response
    createSecurityConfigurationResponse,
    CreateSecurityConfigurationResponse,

    -- * Response Lenses
    cscrrsCreatedTimestamp,
    cscrrsName,
    cscrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSecurityConfiguration' smart constructor.
data CreateSecurityConfiguration = CreateSecurityConfiguration'
  { _cscName ::
      !Text,
    _cscEncryptionConfiguration ::
      !EncryptionConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSecurityConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscName' - The name for the new security configuration.
--
-- * 'cscEncryptionConfiguration' - The encryption configuration for the new security configuration.
createSecurityConfiguration ::
  -- | 'cscName'
  Text ->
  -- | 'cscEncryptionConfiguration'
  EncryptionConfiguration ->
  CreateSecurityConfiguration
createSecurityConfiguration
  pName_
  pEncryptionConfiguration_ =
    CreateSecurityConfiguration'
      { _cscName = pName_,
        _cscEncryptionConfiguration =
          pEncryptionConfiguration_
      }

-- | The name for the new security configuration.
cscName :: Lens' CreateSecurityConfiguration Text
cscName = lens _cscName (\s a -> s {_cscName = a})

-- | The encryption configuration for the new security configuration.
cscEncryptionConfiguration :: Lens' CreateSecurityConfiguration EncryptionConfiguration
cscEncryptionConfiguration = lens _cscEncryptionConfiguration (\s a -> s {_cscEncryptionConfiguration = a})

instance AWSRequest CreateSecurityConfiguration where
  type
    Rs CreateSecurityConfiguration =
      CreateSecurityConfigurationResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateSecurityConfigurationResponse'
            <$> (x .?> "CreatedTimestamp")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSecurityConfiguration

instance NFData CreateSecurityConfiguration

instance ToHeaders CreateSecurityConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSGlue.CreateSecurityConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSecurityConfiguration where
  toJSON CreateSecurityConfiguration' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _cscName),
            Just
              ( "EncryptionConfiguration"
                  .= _cscEncryptionConfiguration
              )
          ]
      )

instance ToPath CreateSecurityConfiguration where
  toPath = const "/"

instance ToQuery CreateSecurityConfiguration where
  toQuery = const mempty

-- | /See:/ 'createSecurityConfigurationResponse' smart constructor.
data CreateSecurityConfigurationResponse = CreateSecurityConfigurationResponse'
  { _cscrrsCreatedTimestamp ::
      !( Maybe
           POSIX
       ),
    _cscrrsName ::
      !( Maybe
           Text
       ),
    _cscrrsResponseStatus ::
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

-- | Creates a value of 'CreateSecurityConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscrrsCreatedTimestamp' - The time at which the new security configuration was created.
--
-- * 'cscrrsName' - The name assigned to the new security configuration.
--
-- * 'cscrrsResponseStatus' - -- | The response status code.
createSecurityConfigurationResponse ::
  -- | 'cscrrsResponseStatus'
  Int ->
  CreateSecurityConfigurationResponse
createSecurityConfigurationResponse pResponseStatus_ =
  CreateSecurityConfigurationResponse'
    { _cscrrsCreatedTimestamp =
        Nothing,
      _cscrrsName = Nothing,
      _cscrrsResponseStatus =
        pResponseStatus_
    }

-- | The time at which the new security configuration was created.
cscrrsCreatedTimestamp :: Lens' CreateSecurityConfigurationResponse (Maybe UTCTime)
cscrrsCreatedTimestamp = lens _cscrrsCreatedTimestamp (\s a -> s {_cscrrsCreatedTimestamp = a}) . mapping _Time

-- | The name assigned to the new security configuration.
cscrrsName :: Lens' CreateSecurityConfigurationResponse (Maybe Text)
cscrrsName = lens _cscrrsName (\s a -> s {_cscrrsName = a})

-- | -- | The response status code.
cscrrsResponseStatus :: Lens' CreateSecurityConfigurationResponse Int
cscrrsResponseStatus = lens _cscrrsResponseStatus (\s a -> s {_cscrrsResponseStatus = a})

instance NFData CreateSecurityConfigurationResponse
