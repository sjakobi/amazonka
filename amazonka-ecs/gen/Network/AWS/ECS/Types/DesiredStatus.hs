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
-- Module      : Network.AWS.ECS.Types.DesiredStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DesiredStatus
  ( DesiredStatus
      ( ..,
        DesiredStatusPENDING,
        DesiredStatusRUNNING,
        DesiredStatusSTOPPED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DesiredStatus = DesiredStatus'
  { fromDesiredStatus ::
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

pattern DesiredStatusPENDING :: DesiredStatus
pattern DesiredStatusPENDING = DesiredStatus' "PENDING"

pattern DesiredStatusRUNNING :: DesiredStatus
pattern DesiredStatusRUNNING = DesiredStatus' "RUNNING"

pattern DesiredStatusSTOPPED :: DesiredStatus
pattern DesiredStatusSTOPPED = DesiredStatus' "STOPPED"

{-# COMPLETE
  DesiredStatusPENDING,
  DesiredStatusRUNNING,
  DesiredStatusSTOPPED,
  DesiredStatus'
  #-}

instance Prelude.FromText DesiredStatus where
  parser = DesiredStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DesiredStatus where
  toText (DesiredStatus' x) = x

instance Prelude.Hashable DesiredStatus

instance Prelude.NFData DesiredStatus

instance Prelude.ToByteString DesiredStatus

instance Prelude.ToQuery DesiredStatus

instance Prelude.ToHeader DesiredStatus

instance Prelude.ToJSON DesiredStatus where
  toJSON = Prelude.toJSONText
