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
-- Module      : Network.AWS.CloudWatch.Types.RecentlyActive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.RecentlyActive
  ( RecentlyActive
      ( ..,
        RecentlyActivePT3H
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecentlyActive = RecentlyActive'
  { fromRecentlyActive ::
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

pattern RecentlyActivePT3H :: RecentlyActive
pattern RecentlyActivePT3H = RecentlyActive' "PT3H"

{-# COMPLETE
  RecentlyActivePT3H,
  RecentlyActive'
  #-}

instance Prelude.FromText RecentlyActive where
  parser = RecentlyActive' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecentlyActive where
  toText (RecentlyActive' x) = x

instance Prelude.Hashable RecentlyActive

instance Prelude.NFData RecentlyActive

instance Prelude.ToByteString RecentlyActive

instance Prelude.ToQuery RecentlyActive

instance Prelude.ToHeader RecentlyActive
