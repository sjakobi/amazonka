{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeProperty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeProperty where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about each property specified in the action configuration, such as the description and key name that display for the customer using the action type.
--
--
--
-- /See:/ 'actionTypeProperty' smart constructor.
data ActionTypeProperty = ActionTypeProperty'
  { _atpDescription ::
      !(Maybe Text),
    _atpQueryable :: !(Maybe Bool),
    _atpName :: !Text,
    _atpOptional :: !Bool,
    _atpKey :: !Bool,
    _atpNoEcho :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionTypeProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atpDescription' - The description of the property that is displayed to users.
--
-- * 'atpQueryable' - Indicates that the property is used with polling. An action type can have up to one queryable property. If it has one, that property must be both required and not secret.
--
-- * 'atpName' - The property name that is displayed to users.
--
-- * 'atpOptional' - Whether the configuration property is an optional value.
--
-- * 'atpKey' - Whether the configuration property is a key.
--
-- * 'atpNoEcho' - Whether to omit the field value entered by the customer in the log. If @true@ , the value is not saved in CloudTrail logs for the action execution.
actionTypeProperty ::
  -- | 'atpName'
  Text ->
  -- | 'atpOptional'
  Bool ->
  -- | 'atpKey'
  Bool ->
  -- | 'atpNoEcho'
  Bool ->
  ActionTypeProperty
actionTypeProperty pName_ pOptional_ pKey_ pNoEcho_ =
  ActionTypeProperty'
    { _atpDescription = Nothing,
      _atpQueryable = Nothing,
      _atpName = pName_,
      _atpOptional = pOptional_,
      _atpKey = pKey_,
      _atpNoEcho = pNoEcho_
    }

-- | The description of the property that is displayed to users.
atpDescription :: Lens' ActionTypeProperty (Maybe Text)
atpDescription = lens _atpDescription (\s a -> s {_atpDescription = a})

-- | Indicates that the property is used with polling. An action type can have up to one queryable property. If it has one, that property must be both required and not secret.
atpQueryable :: Lens' ActionTypeProperty (Maybe Bool)
atpQueryable = lens _atpQueryable (\s a -> s {_atpQueryable = a})

-- | The property name that is displayed to users.
atpName :: Lens' ActionTypeProperty Text
atpName = lens _atpName (\s a -> s {_atpName = a})

-- | Whether the configuration property is an optional value.
atpOptional :: Lens' ActionTypeProperty Bool
atpOptional = lens _atpOptional (\s a -> s {_atpOptional = a})

-- | Whether the configuration property is a key.
atpKey :: Lens' ActionTypeProperty Bool
atpKey = lens _atpKey (\s a -> s {_atpKey = a})

-- | Whether to omit the field value entered by the customer in the log. If @true@ , the value is not saved in CloudTrail logs for the action execution.
atpNoEcho :: Lens' ActionTypeProperty Bool
atpNoEcho = lens _atpNoEcho (\s a -> s {_atpNoEcho = a})

instance FromJSON ActionTypeProperty where
  parseJSON =
    withObject
      "ActionTypeProperty"
      ( \x ->
          ActionTypeProperty'
            <$> (x .:? "description")
            <*> (x .:? "queryable")
            <*> (x .: "name")
            <*> (x .: "optional")
            <*> (x .: "key")
            <*> (x .: "noEcho")
      )

instance Hashable ActionTypeProperty

instance NFData ActionTypeProperty

instance ToJSON ActionTypeProperty where
  toJSON ActionTypeProperty' {..} =
    object
      ( catMaybes
          [ ("description" .=) <$> _atpDescription,
            ("queryable" .=) <$> _atpQueryable,
            Just ("name" .= _atpName),
            Just ("optional" .= _atpOptional),
            Just ("key" .= _atpKey),
            Just ("noEcho" .= _atpNoEcho)
          ]
      )
