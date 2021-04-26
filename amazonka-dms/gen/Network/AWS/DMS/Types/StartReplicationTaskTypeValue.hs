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
-- Module      : Network.AWS.DMS.Types.StartReplicationTaskTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.StartReplicationTaskTypeValue
  ( StartReplicationTaskTypeValue
      ( ..,
        StartReplicationTaskTypeValueReloadTarget,
        StartReplicationTaskTypeValueResumeProcessing,
        StartReplicationTaskTypeValueStartReplication
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StartReplicationTaskTypeValue = StartReplicationTaskTypeValue'
  { fromStartReplicationTaskTypeValue ::
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

pattern StartReplicationTaskTypeValueReloadTarget :: StartReplicationTaskTypeValue
pattern StartReplicationTaskTypeValueReloadTarget = StartReplicationTaskTypeValue' "reload-target"

pattern StartReplicationTaskTypeValueResumeProcessing :: StartReplicationTaskTypeValue
pattern StartReplicationTaskTypeValueResumeProcessing = StartReplicationTaskTypeValue' "resume-processing"

pattern StartReplicationTaskTypeValueStartReplication :: StartReplicationTaskTypeValue
pattern StartReplicationTaskTypeValueStartReplication = StartReplicationTaskTypeValue' "start-replication"

{-# COMPLETE
  StartReplicationTaskTypeValueReloadTarget,
  StartReplicationTaskTypeValueResumeProcessing,
  StartReplicationTaskTypeValueStartReplication,
  StartReplicationTaskTypeValue'
  #-}

instance Prelude.FromText StartReplicationTaskTypeValue where
  parser = StartReplicationTaskTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText StartReplicationTaskTypeValue where
  toText (StartReplicationTaskTypeValue' x) = x

instance Prelude.Hashable StartReplicationTaskTypeValue

instance Prelude.NFData StartReplicationTaskTypeValue

instance Prelude.ToByteString StartReplicationTaskTypeValue

instance Prelude.ToQuery StartReplicationTaskTypeValue

instance Prelude.ToHeader StartReplicationTaskTypeValue

instance Prelude.ToJSON StartReplicationTaskTypeValue where
  toJSON = Prelude.toJSONText
