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
-- Module      : Network.AWS.EC2.Types.ContainerFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ContainerFormat
  ( ContainerFormat
      ( ..,
        ContainerFormatOva
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ContainerFormat = ContainerFormat'
  { fromContainerFormat ::
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

pattern ContainerFormatOva :: ContainerFormat
pattern ContainerFormatOva = ContainerFormat' "ova"

{-# COMPLETE
  ContainerFormatOva,
  ContainerFormat'
  #-}

instance Prelude.FromText ContainerFormat where
  parser = ContainerFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerFormat where
  toText (ContainerFormat' x) = x

instance Prelude.Hashable ContainerFormat

instance Prelude.NFData ContainerFormat

instance Prelude.ToByteString ContainerFormat

instance Prelude.ToQuery ContainerFormat

instance Prelude.ToHeader ContainerFormat

instance Prelude.FromXML ContainerFormat where
  parseXML = Prelude.parseXMLText "ContainerFormat"
