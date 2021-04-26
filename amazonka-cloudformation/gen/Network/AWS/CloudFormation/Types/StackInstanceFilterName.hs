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
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackInstanceFilterName
  ( StackInstanceFilterName
      ( ..,
        StackInstanceFilterNameDETAILEDSTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackInstanceFilterName = StackInstanceFilterName'
  { fromStackInstanceFilterName ::
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

pattern StackInstanceFilterNameDETAILEDSTATUS :: StackInstanceFilterName
pattern StackInstanceFilterNameDETAILEDSTATUS = StackInstanceFilterName' "DETAILED_STATUS"

{-# COMPLETE
  StackInstanceFilterNameDETAILEDSTATUS,
  StackInstanceFilterName'
  #-}

instance Prelude.FromText StackInstanceFilterName where
  parser = StackInstanceFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackInstanceFilterName where
  toText (StackInstanceFilterName' x) = x

instance Prelude.Hashable StackInstanceFilterName

instance Prelude.NFData StackInstanceFilterName

instance Prelude.ToByteString StackInstanceFilterName

instance Prelude.ToQuery StackInstanceFilterName

instance Prelude.ToHeader StackInstanceFilterName
