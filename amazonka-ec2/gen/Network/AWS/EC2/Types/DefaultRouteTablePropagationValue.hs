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
-- Module      : Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
  ( DefaultRouteTablePropagationValue
      ( ..,
        DefaultRouteTablePropagationValueDisable,
        DefaultRouteTablePropagationValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DefaultRouteTablePropagationValue = DefaultRouteTablePropagationValue'
  { fromDefaultRouteTablePropagationValue ::
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

pattern DefaultRouteTablePropagationValueDisable :: DefaultRouteTablePropagationValue
pattern DefaultRouteTablePropagationValueDisable = DefaultRouteTablePropagationValue' "disable"

pattern DefaultRouteTablePropagationValueEnable :: DefaultRouteTablePropagationValue
pattern DefaultRouteTablePropagationValueEnable = DefaultRouteTablePropagationValue' "enable"

{-# COMPLETE
  DefaultRouteTablePropagationValueDisable,
  DefaultRouteTablePropagationValueEnable,
  DefaultRouteTablePropagationValue'
  #-}

instance Prelude.FromText DefaultRouteTablePropagationValue where
  parser = DefaultRouteTablePropagationValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefaultRouteTablePropagationValue where
  toText (DefaultRouteTablePropagationValue' x) = x

instance Prelude.Hashable DefaultRouteTablePropagationValue

instance Prelude.NFData DefaultRouteTablePropagationValue

instance Prelude.ToByteString DefaultRouteTablePropagationValue

instance Prelude.ToQuery DefaultRouteTablePropagationValue

instance Prelude.ToHeader DefaultRouteTablePropagationValue

instance Prelude.FromXML DefaultRouteTablePropagationValue where
  parseXML = Prelude.parseXMLText "DefaultRouteTablePropagationValue"
