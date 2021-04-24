{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypePermissions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details identifying the users with permissions to use the action type.
--
--
--
-- /See:/ 'actionTypePermissions' smart constructor.
newtype ActionTypePermissions = ActionTypePermissions'
  { _atpAllowedAccounts ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActionTypePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atpAllowedAccounts' - A list of AWS account IDs with access to use the action type in their pipelines.
actionTypePermissions ::
  -- | 'atpAllowedAccounts'
  NonEmpty Text ->
  ActionTypePermissions
actionTypePermissions pAllowedAccounts_ =
  ActionTypePermissions'
    { _atpAllowedAccounts =
        _List1 # pAllowedAccounts_
    }

-- | A list of AWS account IDs with access to use the action type in their pipelines.
atpAllowedAccounts :: Lens' ActionTypePermissions (NonEmpty Text)
atpAllowedAccounts = lens _atpAllowedAccounts (\s a -> s {_atpAllowedAccounts = a}) . _List1

instance FromJSON ActionTypePermissions where
  parseJSON =
    withObject
      "ActionTypePermissions"
      ( \x ->
          ActionTypePermissions' <$> (x .: "allowedAccounts")
      )

instance Hashable ActionTypePermissions

instance NFData ActionTypePermissions

instance ToJSON ActionTypePermissions where
  toJSON ActionTypePermissions' {..} =
    object
      ( catMaybes
          [Just ("allowedAccounts" .= _atpAllowedAccounts)]
      )
