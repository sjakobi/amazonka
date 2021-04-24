{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Automated backups of a DB instance replicated to another AWS Region. They consist of system backups, transaction logs, and database instance properties.
--
--
--
-- /See:/ 'dbInstanceAutomatedBackupsReplication' smart constructor.
newtype DBInstanceAutomatedBackupsReplication = DBInstanceAutomatedBackupsReplication'
  { _diabrDBInstanceAutomatedBackupsARN ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DBInstanceAutomatedBackupsReplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diabrDBInstanceAutomatedBackupsARN' - The Amazon Resource Name (ARN) of the replicated automated backups.
dbInstanceAutomatedBackupsReplication ::
  DBInstanceAutomatedBackupsReplication
dbInstanceAutomatedBackupsReplication =
  DBInstanceAutomatedBackupsReplication'
    { _diabrDBInstanceAutomatedBackupsARN =
        Nothing
    }

-- | The Amazon Resource Name (ARN) of the replicated automated backups.
diabrDBInstanceAutomatedBackupsARN :: Lens' DBInstanceAutomatedBackupsReplication (Maybe Text)
diabrDBInstanceAutomatedBackupsARN = lens _diabrDBInstanceAutomatedBackupsARN (\s a -> s {_diabrDBInstanceAutomatedBackupsARN = a})

instance
  FromXML
    DBInstanceAutomatedBackupsReplication
  where
  parseXML x =
    DBInstanceAutomatedBackupsReplication'
      <$> (x .@? "DBInstanceAutomatedBackupsArn")

instance
  Hashable
    DBInstanceAutomatedBackupsReplication

instance NFData DBInstanceAutomatedBackupsReplication
