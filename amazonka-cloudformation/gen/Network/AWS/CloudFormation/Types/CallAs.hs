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
-- Module      : Network.AWS.CloudFormation.Types.CallAs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.CallAs
  ( CallAs
      ( ..,
        CallAsDELEGATEDADMIN,
        CallAsSELF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CallAs = CallAs' {fromCallAs :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CallAsDELEGATEDADMIN :: CallAs
pattern CallAsDELEGATEDADMIN = CallAs' "DELEGATED_ADMIN"

pattern CallAsSELF :: CallAs
pattern CallAsSELF = CallAs' "SELF"

{-# COMPLETE
  CallAsDELEGATEDADMIN,
  CallAsSELF,
  CallAs'
  #-}

instance Prelude.FromText CallAs where
  parser = CallAs' Prelude.<$> Prelude.takeText

instance Prelude.ToText CallAs where
  toText (CallAs' x) = x

instance Prelude.Hashable CallAs

instance Prelude.NFData CallAs

instance Prelude.ToByteString CallAs

instance Prelude.ToQuery CallAs

instance Prelude.ToHeader CallAs
