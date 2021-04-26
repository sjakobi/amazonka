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
-- Module      : Network.AWS.SageMaker.Types.EndpointConfigSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointConfigSortKey
  ( EndpointConfigSortKey
      ( ..,
        EndpointConfigSortKeyCreationTime,
        EndpointConfigSortKeyName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndpointConfigSortKey = EndpointConfigSortKey'
  { fromEndpointConfigSortKey ::
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

pattern EndpointConfigSortKeyCreationTime :: EndpointConfigSortKey
pattern EndpointConfigSortKeyCreationTime = EndpointConfigSortKey' "CreationTime"

pattern EndpointConfigSortKeyName :: EndpointConfigSortKey
pattern EndpointConfigSortKeyName = EndpointConfigSortKey' "Name"

{-# COMPLETE
  EndpointConfigSortKeyCreationTime,
  EndpointConfigSortKeyName,
  EndpointConfigSortKey'
  #-}

instance Prelude.FromText EndpointConfigSortKey where
  parser = EndpointConfigSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointConfigSortKey where
  toText (EndpointConfigSortKey' x) = x

instance Prelude.Hashable EndpointConfigSortKey

instance Prelude.NFData EndpointConfigSortKey

instance Prelude.ToByteString EndpointConfigSortKey

instance Prelude.ToQuery EndpointConfigSortKey

instance Prelude.ToHeader EndpointConfigSortKey

instance Prelude.ToJSON EndpointConfigSortKey where
  toJSON = Prelude.toJSONText
