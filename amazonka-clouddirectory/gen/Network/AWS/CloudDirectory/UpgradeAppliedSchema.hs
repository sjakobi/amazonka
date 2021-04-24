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
-- Module      : Network.AWS.CloudDirectory.UpgradeAppliedSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upgrades a single directory in-place using the @PublishedSchemaArn@ with schema updates found in @MinorVersion@ . Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
module Network.AWS.CloudDirectory.UpgradeAppliedSchema
  ( -- * Creating a Request
    upgradeAppliedSchema,
    UpgradeAppliedSchema,

    -- * Request Lenses
    uasDryRun,
    uasPublishedSchemaARN,
    uasDirectoryARN,

    -- * Destructuring the Response
    upgradeAppliedSchemaResponse,
    UpgradeAppliedSchemaResponse,

    -- * Response Lenses
    uasrrsDirectoryARN,
    uasrrsUpgradedSchemaARN,
    uasrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'upgradeAppliedSchema' smart constructor.
data UpgradeAppliedSchema = UpgradeAppliedSchema'
  { _uasDryRun ::
      !(Maybe Bool),
    _uasPublishedSchemaARN ::
      !Text,
    _uasDirectoryARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpgradeAppliedSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasDryRun' - Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.
--
-- * 'uasPublishedSchemaARN' - The revision of the published schema to upgrade the directory to.
--
-- * 'uasDirectoryARN' - The ARN for the directory to which the upgraded schema will be applied.
upgradeAppliedSchema ::
  -- | 'uasPublishedSchemaARN'
  Text ->
  -- | 'uasDirectoryARN'
  Text ->
  UpgradeAppliedSchema
upgradeAppliedSchema
  pPublishedSchemaARN_
  pDirectoryARN_ =
    UpgradeAppliedSchema'
      { _uasDryRun = Nothing,
        _uasPublishedSchemaARN = pPublishedSchemaARN_,
        _uasDirectoryARN = pDirectoryARN_
      }

-- | Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.
uasDryRun :: Lens' UpgradeAppliedSchema (Maybe Bool)
uasDryRun = lens _uasDryRun (\s a -> s {_uasDryRun = a})

-- | The revision of the published schema to upgrade the directory to.
uasPublishedSchemaARN :: Lens' UpgradeAppliedSchema Text
uasPublishedSchemaARN = lens _uasPublishedSchemaARN (\s a -> s {_uasPublishedSchemaARN = a})

-- | The ARN for the directory to which the upgraded schema will be applied.
uasDirectoryARN :: Lens' UpgradeAppliedSchema Text
uasDirectoryARN = lens _uasDirectoryARN (\s a -> s {_uasDirectoryARN = a})

instance AWSRequest UpgradeAppliedSchema where
  type
    Rs UpgradeAppliedSchema =
      UpgradeAppliedSchemaResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          UpgradeAppliedSchemaResponse'
            <$> (x .?> "DirectoryArn")
            <*> (x .?> "UpgradedSchemaArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpgradeAppliedSchema

instance NFData UpgradeAppliedSchema

instance ToHeaders UpgradeAppliedSchema where
  toHeaders = const mempty

instance ToJSON UpgradeAppliedSchema where
  toJSON UpgradeAppliedSchema' {..} =
    object
      ( catMaybes
          [ ("DryRun" .=) <$> _uasDryRun,
            Just
              ("PublishedSchemaArn" .= _uasPublishedSchemaARN),
            Just ("DirectoryArn" .= _uasDirectoryARN)
          ]
      )

instance ToPath UpgradeAppliedSchema where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"

instance ToQuery UpgradeAppliedSchema where
  toQuery = const mempty

-- | /See:/ 'upgradeAppliedSchemaResponse' smart constructor.
data UpgradeAppliedSchemaResponse = UpgradeAppliedSchemaResponse'
  { _uasrrsDirectoryARN ::
      !(Maybe Text),
    _uasrrsUpgradedSchemaARN ::
      !(Maybe Text),
    _uasrrsResponseStatus ::
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

-- | Creates a value of 'UpgradeAppliedSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasrrsDirectoryARN' - The ARN of the directory that is returned as part of the response.
--
-- * 'uasrrsUpgradedSchemaARN' - The ARN of the upgraded schema that is returned as part of the response.
--
-- * 'uasrrsResponseStatus' - -- | The response status code.
upgradeAppliedSchemaResponse ::
  -- | 'uasrrsResponseStatus'
  Int ->
  UpgradeAppliedSchemaResponse
upgradeAppliedSchemaResponse pResponseStatus_ =
  UpgradeAppliedSchemaResponse'
    { _uasrrsDirectoryARN =
        Nothing,
      _uasrrsUpgradedSchemaARN = Nothing,
      _uasrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the directory that is returned as part of the response.
uasrrsDirectoryARN :: Lens' UpgradeAppliedSchemaResponse (Maybe Text)
uasrrsDirectoryARN = lens _uasrrsDirectoryARN (\s a -> s {_uasrrsDirectoryARN = a})

-- | The ARN of the upgraded schema that is returned as part of the response.
uasrrsUpgradedSchemaARN :: Lens' UpgradeAppliedSchemaResponse (Maybe Text)
uasrrsUpgradedSchemaARN = lens _uasrrsUpgradedSchemaARN (\s a -> s {_uasrrsUpgradedSchemaARN = a})

-- | -- | The response status code.
uasrrsResponseStatus :: Lens' UpgradeAppliedSchemaResponse Int
uasrrsResponseStatus = lens _uasrrsResponseStatus (\s a -> s {_uasrrsResponseStatus = a})

instance NFData UpgradeAppliedSchemaResponse
