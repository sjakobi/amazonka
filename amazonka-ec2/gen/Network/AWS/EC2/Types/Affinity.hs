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
-- Module      : Network.AWS.EC2.Types.Affinity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Affinity
  ( Affinity
      ( ..,
        AffinityDefault,
        AffinityHost
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Affinity = Affinity'
  { fromAffinity ::
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

pattern AffinityDefault :: Affinity
pattern AffinityDefault = Affinity' "default"

pattern AffinityHost :: Affinity
pattern AffinityHost = Affinity' "host"

{-# COMPLETE
  AffinityDefault,
  AffinityHost,
  Affinity'
  #-}

instance Prelude.FromText Affinity where
  parser = Affinity' Prelude.<$> Prelude.takeText

instance Prelude.ToText Affinity where
  toText (Affinity' x) = x

instance Prelude.Hashable Affinity

instance Prelude.NFData Affinity

instance Prelude.ToByteString Affinity

instance Prelude.ToQuery Affinity

instance Prelude.ToHeader Affinity
