{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.AppsListDataSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.AppsListDataSummary where

import Network.AWS.FMS.Types.App
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details of the AWS Firewall Manager applications list.
--
--
--
-- /See:/ 'appsListDataSummary' smart constructor.
data AppsListDataSummary = AppsListDataSummary'
  { _aldsAppsList ::
      !(Maybe [App]),
    _aldsListName :: !(Maybe Text),
    _aldsListARN :: !(Maybe Text),
    _aldsListId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsListDataSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aldsAppsList' - An array of @App@ objects in the AWS Firewall Manager applications list.
--
-- * 'aldsListName' - The name of the applications list.
--
-- * 'aldsListARN' - The Amazon Resource Name (ARN) of the applications list.
--
-- * 'aldsListId' - The ID of the applications list.
appsListDataSummary ::
  AppsListDataSummary
appsListDataSummary =
  AppsListDataSummary'
    { _aldsAppsList = Nothing,
      _aldsListName = Nothing,
      _aldsListARN = Nothing,
      _aldsListId = Nothing
    }

-- | An array of @App@ objects in the AWS Firewall Manager applications list.
aldsAppsList :: Lens' AppsListDataSummary [App]
aldsAppsList = lens _aldsAppsList (\s a -> s {_aldsAppsList = a}) . _Default . _Coerce

-- | The name of the applications list.
aldsListName :: Lens' AppsListDataSummary (Maybe Text)
aldsListName = lens _aldsListName (\s a -> s {_aldsListName = a})

-- | The Amazon Resource Name (ARN) of the applications list.
aldsListARN :: Lens' AppsListDataSummary (Maybe Text)
aldsListARN = lens _aldsListARN (\s a -> s {_aldsListARN = a})

-- | The ID of the applications list.
aldsListId :: Lens' AppsListDataSummary (Maybe Text)
aldsListId = lens _aldsListId (\s a -> s {_aldsListId = a})

instance FromJSON AppsListDataSummary where
  parseJSON =
    withObject
      "AppsListDataSummary"
      ( \x ->
          AppsListDataSummary'
            <$> (x .:? "AppsList" .!= mempty)
            <*> (x .:? "ListName")
            <*> (x .:? "ListArn")
            <*> (x .:? "ListId")
      )

instance Hashable AppsListDataSummary

instance NFData AppsListDataSummary
