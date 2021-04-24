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
-- Module      : Network.AWS.Greengrass.CreateCoreDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
module Network.AWS.Greengrass.CreateCoreDefinition
  ( -- * Creating a Request
    createCoreDefinition,
    CreateCoreDefinition,

    -- * Request Lenses
    ccdName,
    ccdInitialVersion,
    ccdTags,
    ccdAmznClientToken,

    -- * Destructuring the Response
    createCoreDefinitionResponse,
    CreateCoreDefinitionResponse,

    -- * Response Lenses
    ccdrrsCreationTimestamp,
    ccdrrsLatestVersionARN,
    ccdrrsLatestVersion,
    ccdrrsARN,
    ccdrrsId,
    ccdrrsName,
    ccdrrsLastUpdatedTimestamp,
    ccdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Information needed to create a core definition.
--
-- /See:/ 'createCoreDefinition' smart constructor.
data CreateCoreDefinition = CreateCoreDefinition'
  { _ccdName ::
      !(Maybe Text),
    _ccdInitialVersion ::
      !( Maybe
           CoreDefinitionVersion
       ),
    _ccdTags ::
      !(Maybe (Map Text Text)),
    _ccdAmznClientToken ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCoreDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdName' - The name of the core definition.
--
-- * 'ccdInitialVersion' - Information about the initial version of the core definition.
--
-- * 'ccdTags' - Tag(s) to add to the new resource.
--
-- * 'ccdAmznClientToken' - A client token used to correlate requests and responses.
createCoreDefinition ::
  CreateCoreDefinition
createCoreDefinition =
  CreateCoreDefinition'
    { _ccdName = Nothing,
      _ccdInitialVersion = Nothing,
      _ccdTags = Nothing,
      _ccdAmznClientToken = Nothing
    }

-- | The name of the core definition.
ccdName :: Lens' CreateCoreDefinition (Maybe Text)
ccdName = lens _ccdName (\s a -> s {_ccdName = a})

-- | Information about the initial version of the core definition.
ccdInitialVersion :: Lens' CreateCoreDefinition (Maybe CoreDefinitionVersion)
ccdInitialVersion = lens _ccdInitialVersion (\s a -> s {_ccdInitialVersion = a})

-- | Tag(s) to add to the new resource.
ccdTags :: Lens' CreateCoreDefinition (HashMap Text Text)
ccdTags = lens _ccdTags (\s a -> s {_ccdTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
ccdAmznClientToken :: Lens' CreateCoreDefinition (Maybe Text)
ccdAmznClientToken = lens _ccdAmznClientToken (\s a -> s {_ccdAmznClientToken = a})

instance AWSRequest CreateCoreDefinition where
  type
    Rs CreateCoreDefinition =
      CreateCoreDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateCoreDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCoreDefinition

instance NFData CreateCoreDefinition

instance ToHeaders CreateCoreDefinition where
  toHeaders CreateCoreDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _ccdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateCoreDefinition where
  toJSON CreateCoreDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _ccdName,
            ("InitialVersion" .=) <$> _ccdInitialVersion,
            ("tags" .=) <$> _ccdTags
          ]
      )

instance ToPath CreateCoreDefinition where
  toPath = const "/greengrass/definition/cores"

instance ToQuery CreateCoreDefinition where
  toQuery = const mempty

-- | /See:/ 'createCoreDefinitionResponse' smart constructor.
data CreateCoreDefinitionResponse = CreateCoreDefinitionResponse'
  { _ccdrrsCreationTimestamp ::
      !(Maybe Text),
    _ccdrrsLatestVersionARN ::
      !(Maybe Text),
    _ccdrrsLatestVersion ::
      !(Maybe Text),
    _ccdrrsARN ::
      !(Maybe Text),
    _ccdrrsId ::
      !(Maybe Text),
    _ccdrrsName ::
      !(Maybe Text),
    _ccdrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _ccdrrsResponseStatus ::
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

-- | Creates a value of 'CreateCoreDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'ccdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'ccdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'ccdrrsARN' - The ARN of the definition.
--
-- * 'ccdrrsId' - The ID of the definition.
--
-- * 'ccdrrsName' - The name of the definition.
--
-- * 'ccdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'ccdrrsResponseStatus' - -- | The response status code.
createCoreDefinitionResponse ::
  -- | 'ccdrrsResponseStatus'
  Int ->
  CreateCoreDefinitionResponse
createCoreDefinitionResponse pResponseStatus_ =
  CreateCoreDefinitionResponse'
    { _ccdrrsCreationTimestamp =
        Nothing,
      _ccdrrsLatestVersionARN = Nothing,
      _ccdrrsLatestVersion = Nothing,
      _ccdrrsARN = Nothing,
      _ccdrrsId = Nothing,
      _ccdrrsName = Nothing,
      _ccdrrsLastUpdatedTimestamp = Nothing,
      _ccdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
ccdrrsCreationTimestamp :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsCreationTimestamp = lens _ccdrrsCreationTimestamp (\s a -> s {_ccdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
ccdrrsLatestVersionARN :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsLatestVersionARN = lens _ccdrrsLatestVersionARN (\s a -> s {_ccdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
ccdrrsLatestVersion :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsLatestVersion = lens _ccdrrsLatestVersion (\s a -> s {_ccdrrsLatestVersion = a})

-- | The ARN of the definition.
ccdrrsARN :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsARN = lens _ccdrrsARN (\s a -> s {_ccdrrsARN = a})

-- | The ID of the definition.
ccdrrsId :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsId = lens _ccdrrsId (\s a -> s {_ccdrrsId = a})

-- | The name of the definition.
ccdrrsName :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsName = lens _ccdrrsName (\s a -> s {_ccdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
ccdrrsLastUpdatedTimestamp :: Lens' CreateCoreDefinitionResponse (Maybe Text)
ccdrrsLastUpdatedTimestamp = lens _ccdrrsLastUpdatedTimestamp (\s a -> s {_ccdrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
ccdrrsResponseStatus :: Lens' CreateCoreDefinitionResponse Int
ccdrrsResponseStatus = lens _ccdrrsResponseStatus (\s a -> s {_ccdrrsResponseStatus = a})

instance NFData CreateCoreDefinitionResponse
