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
-- Module      : Network.AWS.AutoScaling.Types.RefreshStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.RefreshStrategy
  ( RefreshStrategy
      ( ..,
        RefreshStrategyRolling
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RefreshStrategy = RefreshStrategy'
  { fromRefreshStrategy ::
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

pattern RefreshStrategyRolling :: RefreshStrategy
pattern RefreshStrategyRolling = RefreshStrategy' "Rolling"

{-# COMPLETE
  RefreshStrategyRolling,
  RefreshStrategy'
  #-}

instance Prelude.FromText RefreshStrategy where
  parser = RefreshStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText RefreshStrategy where
  toText (RefreshStrategy' x) = x

instance Prelude.Hashable RefreshStrategy

instance Prelude.NFData RefreshStrategy

instance Prelude.ToByteString RefreshStrategy

instance Prelude.ToQuery RefreshStrategy

instance Prelude.ToHeader RefreshStrategy
