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
-- Module      : Network.AWS.EC2.Types.EnaSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EnaSupport
  ( EnaSupport
      ( ..,
        EnaSupportRequired,
        EnaSupportSupported,
        EnaSupportUnsupported
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EnaSupport = EnaSupport'
  { fromEnaSupport ::
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

pattern EnaSupportRequired :: EnaSupport
pattern EnaSupportRequired = EnaSupport' "required"

pattern EnaSupportSupported :: EnaSupport
pattern EnaSupportSupported = EnaSupport' "supported"

pattern EnaSupportUnsupported :: EnaSupport
pattern EnaSupportUnsupported = EnaSupport' "unsupported"

{-# COMPLETE
  EnaSupportRequired,
  EnaSupportSupported,
  EnaSupportUnsupported,
  EnaSupport'
  #-}

instance Prelude.FromText EnaSupport where
  parser = EnaSupport' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnaSupport where
  toText (EnaSupport' x) = x

instance Prelude.Hashable EnaSupport

instance Prelude.NFData EnaSupport

instance Prelude.ToByteString EnaSupport

instance Prelude.ToQuery EnaSupport

instance Prelude.ToHeader EnaSupport

instance Prelude.FromXML EnaSupport where
  parseXML = Prelude.parseXMLText "EnaSupport"
