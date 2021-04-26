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
-- Module      : Network.AWS.CodeDeploy.Types.TargetFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TargetFilterName
  ( TargetFilterName
      ( ..,
        TargetFilterNameServerInstanceLabel,
        TargetFilterNameTargetStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetFilterName = TargetFilterName'
  { fromTargetFilterName ::
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

pattern TargetFilterNameServerInstanceLabel :: TargetFilterName
pattern TargetFilterNameServerInstanceLabel = TargetFilterName' "ServerInstanceLabel"

pattern TargetFilterNameTargetStatus :: TargetFilterName
pattern TargetFilterNameTargetStatus = TargetFilterName' "TargetStatus"

{-# COMPLETE
  TargetFilterNameServerInstanceLabel,
  TargetFilterNameTargetStatus,
  TargetFilterName'
  #-}

instance Prelude.FromText TargetFilterName where
  parser = TargetFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetFilterName where
  toText (TargetFilterName' x) = x

instance Prelude.Hashable TargetFilterName

instance Prelude.NFData TargetFilterName

instance Prelude.ToByteString TargetFilterName

instance Prelude.ToQuery TargetFilterName

instance Prelude.ToHeader TargetFilterName

instance Prelude.ToJSON TargetFilterName where
  toJSON = Prelude.toJSONText
