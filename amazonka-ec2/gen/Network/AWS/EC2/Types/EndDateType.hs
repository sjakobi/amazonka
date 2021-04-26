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
-- Module      : Network.AWS.EC2.Types.EndDateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EndDateType
  ( EndDateType
      ( ..,
        EndDateTypeLimited,
        EndDateTypeUnlimited
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EndDateType = EndDateType'
  { fromEndDateType ::
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

pattern EndDateTypeLimited :: EndDateType
pattern EndDateTypeLimited = EndDateType' "limited"

pattern EndDateTypeUnlimited :: EndDateType
pattern EndDateTypeUnlimited = EndDateType' "unlimited"

{-# COMPLETE
  EndDateTypeLimited,
  EndDateTypeUnlimited,
  EndDateType'
  #-}

instance Prelude.FromText EndDateType where
  parser = EndDateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndDateType where
  toText (EndDateType' x) = x

instance Prelude.Hashable EndDateType

instance Prelude.NFData EndDateType

instance Prelude.ToByteString EndDateType

instance Prelude.ToQuery EndDateType

instance Prelude.ToHeader EndDateType

instance Prelude.FromXML EndDateType where
  parseXML = Prelude.parseXMLText "EndDateType"
