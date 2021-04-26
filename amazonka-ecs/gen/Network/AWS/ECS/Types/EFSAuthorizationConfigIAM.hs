{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.EFSAuthorizationConfigIAM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EFSAuthorizationConfigIAM
  ( EFSAuthorizationConfigIAM
      ( ..,
        EFSAuthorizationConfigIAMDISABLED,
        EFSAuthorizationConfigIAMENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EFSAuthorizationConfigIAM = EFSAuthorizationConfigIAM'
  { fromEFSAuthorizationConfigIAM ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EFSAuthorizationConfigIAMDISABLED :: EFSAuthorizationConfigIAM
pattern EFSAuthorizationConfigIAMDISABLED = EFSAuthorizationConfigIAM' "DISABLED"

pattern EFSAuthorizationConfigIAMENABLED :: EFSAuthorizationConfigIAM
pattern EFSAuthorizationConfigIAMENABLED = EFSAuthorizationConfigIAM' "ENABLED"

{-# COMPLETE
  EFSAuthorizationConfigIAMDISABLED,
  EFSAuthorizationConfigIAMENABLED,
  EFSAuthorizationConfigIAM'
  #-}

instance Prelude.FromText EFSAuthorizationConfigIAM where
  parser = EFSAuthorizationConfigIAM' Prelude.<$> Prelude.takeText

instance Prelude.ToText EFSAuthorizationConfigIAM where
  toText (EFSAuthorizationConfigIAM' x) = x

instance Prelude.Hashable EFSAuthorizationConfigIAM

instance Prelude.NFData EFSAuthorizationConfigIAM

instance Prelude.ToByteString EFSAuthorizationConfigIAM

instance Prelude.ToQuery EFSAuthorizationConfigIAM

instance Prelude.ToHeader EFSAuthorizationConfigIAM

instance Prelude.ToJSON EFSAuthorizationConfigIAM where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EFSAuthorizationConfigIAM where
  parseJSON = Prelude.parseJSONText "EFSAuthorizationConfigIAM"
