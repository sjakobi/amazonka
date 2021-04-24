{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ElasticIPStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ElasticIPStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes the status of the elastic IP (EIP) address.
--
--
--
-- /See:/ 'elasticIPStatus' smart constructor.
data ElasticIPStatus = ElasticIPStatus'
  { _eisElasticIP ::
      !(Maybe Text),
    _eisStatus :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ElasticIPStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eisElasticIP' - The elastic IP (EIP) address for the cluster.
--
-- * 'eisStatus' - The status of the elastic IP (EIP) address.
elasticIPStatus ::
  ElasticIPStatus
elasticIPStatus =
  ElasticIPStatus'
    { _eisElasticIP = Nothing,
      _eisStatus = Nothing
    }

-- | The elastic IP (EIP) address for the cluster.
eisElasticIP :: Lens' ElasticIPStatus (Maybe Text)
eisElasticIP = lens _eisElasticIP (\s a -> s {_eisElasticIP = a})

-- | The status of the elastic IP (EIP) address.
eisStatus :: Lens' ElasticIPStatus (Maybe Text)
eisStatus = lens _eisStatus (\s a -> s {_eisStatus = a})

instance FromXML ElasticIPStatus where
  parseXML x =
    ElasticIPStatus'
      <$> (x .@? "ElasticIp") <*> (x .@? "Status")

instance Hashable ElasticIPStatus

instance NFData ElasticIPStatus
