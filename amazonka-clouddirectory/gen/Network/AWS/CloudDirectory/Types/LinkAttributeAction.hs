{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.LinkAttributeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.LinkAttributeAction where

import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import Network.AWS.CloudDirectory.Types.UpdateActionType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.
--
--
--
-- /See:/ 'linkAttributeAction' smart constructor.
data LinkAttributeAction = LinkAttributeAction'
  { _laaAttributeUpdateValue ::
      !(Maybe TypedAttributeValue),
    _laaAttributeActionType ::
      !(Maybe UpdateActionType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LinkAttributeAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laaAttributeUpdateValue' - The value that you want to update to.
--
-- * 'laaAttributeActionType' - A type that can be either @UPDATE_OR_CREATE@ or @DELETE@ .
linkAttributeAction ::
  LinkAttributeAction
linkAttributeAction =
  LinkAttributeAction'
    { _laaAttributeUpdateValue =
        Nothing,
      _laaAttributeActionType = Nothing
    }

-- | The value that you want to update to.
laaAttributeUpdateValue :: Lens' LinkAttributeAction (Maybe TypedAttributeValue)
laaAttributeUpdateValue = lens _laaAttributeUpdateValue (\s a -> s {_laaAttributeUpdateValue = a})

-- | A type that can be either @UPDATE_OR_CREATE@ or @DELETE@ .
laaAttributeActionType :: Lens' LinkAttributeAction (Maybe UpdateActionType)
laaAttributeActionType = lens _laaAttributeActionType (\s a -> s {_laaAttributeActionType = a})

instance Hashable LinkAttributeAction

instance NFData LinkAttributeAction

instance ToJSON LinkAttributeAction where
  toJSON LinkAttributeAction' {..} =
    object
      ( catMaybes
          [ ("AttributeUpdateValue" .=)
              <$> _laaAttributeUpdateValue,
            ("AttributeActionType" .=)
              <$> _laaAttributeActionType
          ]
      )
