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
-- Module      : Network.AWS.CodeDeploy.Types.MinimumHealthyHostsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.MinimumHealthyHostsType
  ( MinimumHealthyHostsType
      ( ..,
        MinimumHealthyHostsTypeFLEETPERCENT,
        MinimumHealthyHostsTypeHOSTCOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MinimumHealthyHostsType = MinimumHealthyHostsType'
  { fromMinimumHealthyHostsType ::
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

pattern MinimumHealthyHostsTypeFLEETPERCENT :: MinimumHealthyHostsType
pattern MinimumHealthyHostsTypeFLEETPERCENT = MinimumHealthyHostsType' "FLEET_PERCENT"

pattern MinimumHealthyHostsTypeHOSTCOUNT :: MinimumHealthyHostsType
pattern MinimumHealthyHostsTypeHOSTCOUNT = MinimumHealthyHostsType' "HOST_COUNT"

{-# COMPLETE
  MinimumHealthyHostsTypeFLEETPERCENT,
  MinimumHealthyHostsTypeHOSTCOUNT,
  MinimumHealthyHostsType'
  #-}

instance Prelude.FromText MinimumHealthyHostsType where
  parser = MinimumHealthyHostsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MinimumHealthyHostsType where
  toText (MinimumHealthyHostsType' x) = x

instance Prelude.Hashable MinimumHealthyHostsType

instance Prelude.NFData MinimumHealthyHostsType

instance Prelude.ToByteString MinimumHealthyHostsType

instance Prelude.ToQuery MinimumHealthyHostsType

instance Prelude.ToHeader MinimumHealthyHostsType

instance Prelude.ToJSON MinimumHealthyHostsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MinimumHealthyHostsType where
  parseJSON = Prelude.parseJSONText "MinimumHealthyHostsType"
