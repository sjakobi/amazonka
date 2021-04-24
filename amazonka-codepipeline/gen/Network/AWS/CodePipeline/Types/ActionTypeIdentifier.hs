{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeIdentifier where

import Network.AWS.CodePipeline.Types.ActionCategory
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the category, owner, provider, and version of the action type.
--
--
--
-- /See:/ 'actionTypeIdentifier' smart constructor.
data ActionTypeIdentifier = ActionTypeIdentifier'
  { _aCategory ::
      !ActionCategory,
    _aOwner :: !Text,
    _aProvider :: !Text,
    _aVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionTypeIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCategory' - Defines what kind of action can be taken in the stage, one of the following:     * @Source@      * @Build@      * @Test@      * @Deploy@      * @Approval@      * @Invoke@
--
-- * 'aOwner' - The creator of the action type being called: @AWS@ or @ThirdParty@ .
--
-- * 'aProvider' - The provider of the action type being called. The provider name is supplied when the action type is created.
--
-- * 'aVersion' - A string that describes the action type version.
actionTypeIdentifier ::
  -- | 'aCategory'
  ActionCategory ->
  -- | 'aOwner'
  Text ->
  -- | 'aProvider'
  Text ->
  -- | 'aVersion'
  Text ->
  ActionTypeIdentifier
actionTypeIdentifier
  pCategory_
  pOwner_
  pProvider_
  pVersion_ =
    ActionTypeIdentifier'
      { _aCategory = pCategory_,
        _aOwner = pOwner_,
        _aProvider = pProvider_,
        _aVersion = pVersion_
      }

-- | Defines what kind of action can be taken in the stage, one of the following:     * @Source@      * @Build@      * @Test@      * @Deploy@      * @Approval@      * @Invoke@
aCategory :: Lens' ActionTypeIdentifier ActionCategory
aCategory = lens _aCategory (\s a -> s {_aCategory = a})

-- | The creator of the action type being called: @AWS@ or @ThirdParty@ .
aOwner :: Lens' ActionTypeIdentifier Text
aOwner = lens _aOwner (\s a -> s {_aOwner = a})

-- | The provider of the action type being called. The provider name is supplied when the action type is created.
aProvider :: Lens' ActionTypeIdentifier Text
aProvider = lens _aProvider (\s a -> s {_aProvider = a})

-- | A string that describes the action type version.
aVersion :: Lens' ActionTypeIdentifier Text
aVersion = lens _aVersion (\s a -> s {_aVersion = a})

instance FromJSON ActionTypeIdentifier where
  parseJSON =
    withObject
      "ActionTypeIdentifier"
      ( \x ->
          ActionTypeIdentifier'
            <$> (x .: "category")
            <*> (x .: "owner")
            <*> (x .: "provider")
            <*> (x .: "version")
      )

instance Hashable ActionTypeIdentifier

instance NFData ActionTypeIdentifier

instance ToJSON ActionTypeIdentifier where
  toJSON ActionTypeIdentifier' {..} =
    object
      ( catMaybes
          [ Just ("category" .= _aCategory),
            Just ("owner" .= _aOwner),
            Just ("provider" .= _aProvider),
            Just ("version" .= _aVersion)
          ]
      )
