{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBClusterEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterEndpoint where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This data type represents the information you need to connect to an Amazon Aurora DB cluster. This data type is used as a response element in the following actions:
--
--
--     * @CreateDBClusterEndpoint@
--
--     * @DescribeDBClusterEndpoints@
--
--     * @ModifyDBClusterEndpoint@
--
--     * @DeleteDBClusterEndpoint@
--
--
--
-- For the data structure that represents Amazon RDS DB instance endpoints, see @Endpoint@ .
--
--
-- /See:/ 'dbClusterEndpoint' smart constructor.
data DBClusterEndpoint = DBClusterEndpoint'
  { _dceDBClusterEndpointIdentifier ::
      !(Maybe Text),
    _dceStatus :: !(Maybe Text),
    _dceExcludedMembers ::
      !(Maybe [Text]),
    _dceEndpointType :: !(Maybe Text),
    _dceCustomEndpointType ::
      !(Maybe Text),
    _dceDBClusterEndpointARN ::
      !(Maybe Text),
    _dceDBClusterIdentifier ::
      !(Maybe Text),
    _dceDBClusterEndpointResourceIdentifier ::
      !(Maybe Text),
    _dceEndpoint :: !(Maybe Text),
    _dceStaticMembers ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBClusterEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dceDBClusterEndpointIdentifier' - The identifier associated with the endpoint. This parameter is stored as a lowercase string.
--
-- * 'dceStatus' - The current status of the endpoint. One of: @creating@ , @available@ , @deleting@ , @inactive@ , @modifying@ . The @inactive@ state applies to an endpoint that can't be used for a certain kind of cluster, such as a @writer@ endpoint for a read-only secondary cluster in a global database.
--
-- * 'dceExcludedMembers' - List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
--
-- * 'dceEndpointType' - The type of the endpoint. One of: @READER@ , @WRITER@ , @CUSTOM@ .
--
-- * 'dceCustomEndpointType' - The type associated with a custom endpoint. One of: @READER@ , @WRITER@ , @ANY@ .
--
-- * 'dceDBClusterEndpointARN' - The Amazon Resource Name (ARN) for the endpoint.
--
-- * 'dceDBClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
--
-- * 'dceDBClusterEndpointResourceIdentifier' - A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.
--
-- * 'dceEndpoint' - The DNS address of the endpoint.
--
-- * 'dceStaticMembers' - List of DB instance identifiers that are part of the custom endpoint group.
dbClusterEndpoint ::
  DBClusterEndpoint
dbClusterEndpoint =
  DBClusterEndpoint'
    { _dceDBClusterEndpointIdentifier =
        Nothing,
      _dceStatus = Nothing,
      _dceExcludedMembers = Nothing,
      _dceEndpointType = Nothing,
      _dceCustomEndpointType = Nothing,
      _dceDBClusterEndpointARN = Nothing,
      _dceDBClusterIdentifier = Nothing,
      _dceDBClusterEndpointResourceIdentifier = Nothing,
      _dceEndpoint = Nothing,
      _dceStaticMembers = Nothing
    }

-- | The identifier associated with the endpoint. This parameter is stored as a lowercase string.
dceDBClusterEndpointIdentifier :: Lens' DBClusterEndpoint (Maybe Text)
dceDBClusterEndpointIdentifier = lens _dceDBClusterEndpointIdentifier (\s a -> s {_dceDBClusterEndpointIdentifier = a})

-- | The current status of the endpoint. One of: @creating@ , @available@ , @deleting@ , @inactive@ , @modifying@ . The @inactive@ state applies to an endpoint that can't be used for a certain kind of cluster, such as a @writer@ endpoint for a read-only secondary cluster in a global database.
dceStatus :: Lens' DBClusterEndpoint (Maybe Text)
dceStatus = lens _dceStatus (\s a -> s {_dceStatus = a})

-- | List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
dceExcludedMembers :: Lens' DBClusterEndpoint [Text]
dceExcludedMembers = lens _dceExcludedMembers (\s a -> s {_dceExcludedMembers = a}) . _Default . _Coerce

-- | The type of the endpoint. One of: @READER@ , @WRITER@ , @CUSTOM@ .
dceEndpointType :: Lens' DBClusterEndpoint (Maybe Text)
dceEndpointType = lens _dceEndpointType (\s a -> s {_dceEndpointType = a})

-- | The type associated with a custom endpoint. One of: @READER@ , @WRITER@ , @ANY@ .
dceCustomEndpointType :: Lens' DBClusterEndpoint (Maybe Text)
dceCustomEndpointType = lens _dceCustomEndpointType (\s a -> s {_dceCustomEndpointType = a})

-- | The Amazon Resource Name (ARN) for the endpoint.
dceDBClusterEndpointARN :: Lens' DBClusterEndpoint (Maybe Text)
dceDBClusterEndpointARN = lens _dceDBClusterEndpointARN (\s a -> s {_dceDBClusterEndpointARN = a})

-- | The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
dceDBClusterIdentifier :: Lens' DBClusterEndpoint (Maybe Text)
dceDBClusterIdentifier = lens _dceDBClusterIdentifier (\s a -> s {_dceDBClusterIdentifier = a})

-- | A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.
dceDBClusterEndpointResourceIdentifier :: Lens' DBClusterEndpoint (Maybe Text)
dceDBClusterEndpointResourceIdentifier = lens _dceDBClusterEndpointResourceIdentifier (\s a -> s {_dceDBClusterEndpointResourceIdentifier = a})

-- | The DNS address of the endpoint.
dceEndpoint :: Lens' DBClusterEndpoint (Maybe Text)
dceEndpoint = lens _dceEndpoint (\s a -> s {_dceEndpoint = a})

-- | List of DB instance identifiers that are part of the custom endpoint group.
dceStaticMembers :: Lens' DBClusterEndpoint [Text]
dceStaticMembers = lens _dceStaticMembers (\s a -> s {_dceStaticMembers = a}) . _Default . _Coerce

instance FromXML DBClusterEndpoint where
  parseXML x =
    DBClusterEndpoint'
      <$> (x .@? "DBClusterEndpointIdentifier")
      <*> (x .@? "Status")
      <*> ( x .@? "ExcludedMembers" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "EndpointType")
      <*> (x .@? "CustomEndpointType")
      <*> (x .@? "DBClusterEndpointArn")
      <*> (x .@? "DBClusterIdentifier")
      <*> (x .@? "DBClusterEndpointResourceIdentifier")
      <*> (x .@? "Endpoint")
      <*> ( x .@? "StaticMembers" .!@ mempty
              >>= may (parseXMLList "member")
          )

instance Hashable DBClusterEndpoint

instance NFData DBClusterEndpoint
