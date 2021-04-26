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
-- Module      : Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
  ( DefaultRouteTableAssociationValue
      ( ..,
        DefaultRouteTableAssociationValueDisable,
        DefaultRouteTableAssociationValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DefaultRouteTableAssociationValue = DefaultRouteTableAssociationValue'
  { fromDefaultRouteTableAssociationValue ::
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

pattern DefaultRouteTableAssociationValueDisable :: DefaultRouteTableAssociationValue
pattern DefaultRouteTableAssociationValueDisable = DefaultRouteTableAssociationValue' "disable"

pattern DefaultRouteTableAssociationValueEnable :: DefaultRouteTableAssociationValue
pattern DefaultRouteTableAssociationValueEnable = DefaultRouteTableAssociationValue' "enable"

{-# COMPLETE
  DefaultRouteTableAssociationValueDisable,
  DefaultRouteTableAssociationValueEnable,
  DefaultRouteTableAssociationValue'
  #-}

instance Prelude.FromText DefaultRouteTableAssociationValue where
  parser = DefaultRouteTableAssociationValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefaultRouteTableAssociationValue where
  toText (DefaultRouteTableAssociationValue' x) = x

instance Prelude.Hashable DefaultRouteTableAssociationValue

instance Prelude.NFData DefaultRouteTableAssociationValue

instance Prelude.ToByteString DefaultRouteTableAssociationValue

instance Prelude.ToQuery DefaultRouteTableAssociationValue

instance Prelude.ToHeader DefaultRouteTableAssociationValue

instance Prelude.FromXML DefaultRouteTableAssociationValue where
  parseXML = Prelude.parseXMLText "DefaultRouteTableAssociationValue"
