{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ResetFpgaImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResetFpgaImageAttributeName
  ( ResetFpgaImageAttributeName
      ( ..,
        LoadPermission
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ResetFpgaImageAttributeName
  = ResetFpgaImageAttributeName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LoadPermission :: ResetFpgaImageAttributeName
pattern LoadPermission = ResetFpgaImageAttributeName' "loadPermission"

{-# COMPLETE
  LoadPermission,
  ResetFpgaImageAttributeName'
  #-}

instance FromText ResetFpgaImageAttributeName where
  parser = (ResetFpgaImageAttributeName' . mk) <$> takeText

instance ToText ResetFpgaImageAttributeName where
  toText (ResetFpgaImageAttributeName' ci) = original ci

instance Hashable ResetFpgaImageAttributeName

instance NFData ResetFpgaImageAttributeName

instance ToByteString ResetFpgaImageAttributeName

instance ToQuery ResetFpgaImageAttributeName

instance ToHeader ResetFpgaImageAttributeName
