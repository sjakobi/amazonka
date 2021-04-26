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
-- Module      : Network.AWS.CloudFormation.Types.RequiresRecreation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RequiresRecreation
  ( RequiresRecreation
      ( ..,
        RequiresRecreationAlways,
        RequiresRecreationConditionally,
        RequiresRecreationNever
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequiresRecreation = RequiresRecreation'
  { fromRequiresRecreation ::
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

pattern RequiresRecreationAlways :: RequiresRecreation
pattern RequiresRecreationAlways = RequiresRecreation' "Always"

pattern RequiresRecreationConditionally :: RequiresRecreation
pattern RequiresRecreationConditionally = RequiresRecreation' "Conditionally"

pattern RequiresRecreationNever :: RequiresRecreation
pattern RequiresRecreationNever = RequiresRecreation' "Never"

{-# COMPLETE
  RequiresRecreationAlways,
  RequiresRecreationConditionally,
  RequiresRecreationNever,
  RequiresRecreation'
  #-}

instance Prelude.FromText RequiresRecreation where
  parser = RequiresRecreation' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequiresRecreation where
  toText (RequiresRecreation' x) = x

instance Prelude.Hashable RequiresRecreation

instance Prelude.NFData RequiresRecreation

instance Prelude.ToByteString RequiresRecreation

instance Prelude.ToQuery RequiresRecreation

instance Prelude.ToHeader RequiresRecreation

instance Prelude.FromXML RequiresRecreation where
  parseXML = Prelude.parseXMLText "RequiresRecreation"
