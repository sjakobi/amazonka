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
-- Module      : Network.AWS.MediaPackage.Types.Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Profile
  ( Profile
      ( ..,
        ProfileHBBTV15,
        ProfileNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Profile = Profile'
  { fromProfile ::
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

pattern ProfileHBBTV15 :: Profile
pattern ProfileHBBTV15 = Profile' "HBBTV_1_5"

pattern ProfileNONE :: Profile
pattern ProfileNONE = Profile' "NONE"

{-# COMPLETE
  ProfileHBBTV15,
  ProfileNONE,
  Profile'
  #-}

instance Prelude.FromText Profile where
  parser = Profile' Prelude.<$> Prelude.takeText

instance Prelude.ToText Profile where
  toText (Profile' x) = x

instance Prelude.Hashable Profile

instance Prelude.NFData Profile

instance Prelude.ToByteString Profile

instance Prelude.ToQuery Profile

instance Prelude.ToHeader Profile

instance Prelude.ToJSON Profile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Profile where
  parseJSON = Prelude.parseJSONText "Profile"
