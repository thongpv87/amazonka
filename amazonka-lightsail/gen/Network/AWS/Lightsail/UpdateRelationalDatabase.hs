{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.UpdateRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the update of one or more attributes of a database in Amazon
-- Lightsail.
--
-- Updates are applied immediately, or in cases where the updates could
-- result in an outage, are applied during the database\'s predefined
-- maintenance window.
--
-- The @update relational database@ operation supports tag-based access
-- control via resource tags applied to the resource identified by
-- relationalDatabaseName. For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.UpdateRelationalDatabase
  ( -- * Creating a Request
    UpdateRelationalDatabase (..),
    newUpdateRelationalDatabase,

    -- * Request Lenses
    updateRelationalDatabase_preferredBackupWindow,
    updateRelationalDatabase_caCertificateIdentifier,
    updateRelationalDatabase_disableBackupRetention,
    updateRelationalDatabase_masterUserPassword,
    updateRelationalDatabase_publiclyAccessible,
    updateRelationalDatabase_preferredMaintenanceWindow,
    updateRelationalDatabase_enableBackupRetention,
    updateRelationalDatabase_rotateMasterUserPassword,
    updateRelationalDatabase_applyImmediately,
    updateRelationalDatabase_relationalDatabaseName,

    -- * Destructuring the Response
    UpdateRelationalDatabaseResponse (..),
    newUpdateRelationalDatabaseResponse,

    -- * Response Lenses
    updateRelationalDatabaseResponse_operations,
    updateRelationalDatabaseResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateRelationalDatabase' smart constructor.
data UpdateRelationalDatabase = UpdateRelationalDatabase'
  { -- | The daily time range during which automated backups are created for your
    -- database if automated backups are enabled.
    --
    -- Constraints:
    --
    -- -   Must be in the @hh24:mi-hh24:mi@ format.
    --
    --     Example: @16:00-16:30@
    --
    -- -   Specified in Coordinated Universal Time (UTC).
    --
    -- -   Must not conflict with the preferred maintenance window.
    --
    -- -   Must be at least 30 minutes.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | Indicates the certificate that needs to be associated with the database.
    caCertificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | When @true@, disables automated backup retention for your database.
    --
    -- Disabling backup retention deletes all automated database backups.
    -- Before disabling this, you may want to create a snapshot of your
    -- database using the @create relational database snapshot@ operation.
    --
    -- Updates are applied during the next maintenance window because this can
    -- result in an outage.
    disableBackupRetention :: Prelude.Maybe Prelude.Bool,
    -- | The password for the master user of your database. The password can
    -- include any printable ASCII character except \"\/\", \"\"\", or \"\@\".
    --
    -- Constraints: Must contain 8 to 41 characters.
    masterUserPassword :: Prelude.Maybe (Prelude.Sensitive Prelude.Text),
    -- | Specifies the accessibility options for your database. A value of @true@
    -- specifies a database that is available to resources outside of your
    -- Lightsail account. A value of @false@ specifies a database that is
    -- available only to your Lightsail resources in the same region as your
    -- database.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | The weekly time range during which system maintenance can occur on your
    -- database.
    --
    -- The default is a 30-minute window selected at random from an 8-hour
    -- block of time for each AWS Region, occurring on a random day of the
    -- week.
    --
    -- Constraints:
    --
    -- -   Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
    --
    -- -   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    --
    -- -   Must be at least 30 minutes.
    --
    -- -   Specified in Coordinated Universal Time (UTC).
    --
    -- -   Example: @Tue:17:00-Tue:17:30@
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | When @true@, enables automated backup retention for your database.
    --
    -- Updates are applied during the next maintenance window because this can
    -- result in an outage.
    enableBackupRetention :: Prelude.Maybe Prelude.Bool,
    -- | When @true@, the master user password is changed to a new strong
    -- password generated by Lightsail.
    --
    -- Use the @get relational database master user password@ operation to get
    -- the new password.
    rotateMasterUserPassword :: Prelude.Maybe Prelude.Bool,
    -- | When @true@, applies changes immediately. When @false@, applies changes
    -- during the preferred maintenance window. Some changes may cause an
    -- outage.
    --
    -- Default: @false@
    applyImmediately :: Prelude.Maybe Prelude.Bool,
    -- | The name of your database to update.
    relationalDatabaseName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateRelationalDatabase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'preferredBackupWindow', 'updateRelationalDatabase_preferredBackupWindow' - The daily time range during which automated backups are created for your
-- database if automated backups are enabled.
--
-- Constraints:
--
-- -   Must be in the @hh24:mi-hh24:mi@ format.
--
--     Example: @16:00-16:30@
--
-- -   Specified in Coordinated Universal Time (UTC).
--
-- -   Must not conflict with the preferred maintenance window.
--
-- -   Must be at least 30 minutes.
--
-- 'caCertificateIdentifier', 'updateRelationalDatabase_caCertificateIdentifier' - Indicates the certificate that needs to be associated with the database.
--
-- 'disableBackupRetention', 'updateRelationalDatabase_disableBackupRetention' - When @true@, disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups.
-- Before disabling this, you may want to create a snapshot of your
-- database using the @create relational database snapshot@ operation.
--
-- Updates are applied during the next maintenance window because this can
-- result in an outage.
--
-- 'masterUserPassword', 'updateRelationalDatabase_masterUserPassword' - The password for the master user of your database. The password can
-- include any printable ASCII character except \"\/\", \"\"\", or \"\@\".
--
-- Constraints: Must contain 8 to 41 characters.
--
-- 'publiclyAccessible', 'updateRelationalDatabase_publiclyAccessible' - Specifies the accessibility options for your database. A value of @true@
-- specifies a database that is available to resources outside of your
-- Lightsail account. A value of @false@ specifies a database that is
-- available only to your Lightsail resources in the same region as your
-- database.
--
-- 'preferredMaintenanceWindow', 'updateRelationalDatabase_preferredMaintenanceWindow' - The weekly time range during which system maintenance can occur on your
-- database.
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each AWS Region, occurring on a random day of the
-- week.
--
-- Constraints:
--
-- -   Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
-- -   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
-- -   Must be at least 30 minutes.
--
-- -   Specified in Coordinated Universal Time (UTC).
--
-- -   Example: @Tue:17:00-Tue:17:30@
--
-- 'enableBackupRetention', 'updateRelationalDatabase_enableBackupRetention' - When @true@, enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can
-- result in an outage.
--
-- 'rotateMasterUserPassword', 'updateRelationalDatabase_rotateMasterUserPassword' - When @true@, the master user password is changed to a new strong
-- password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get
-- the new password.
--
-- 'applyImmediately', 'updateRelationalDatabase_applyImmediately' - When @true@, applies changes immediately. When @false@, applies changes
-- during the preferred maintenance window. Some changes may cause an
-- outage.
--
-- Default: @false@
--
-- 'relationalDatabaseName', 'updateRelationalDatabase_relationalDatabaseName' - The name of your database to update.
newUpdateRelationalDatabase ::
  -- | 'relationalDatabaseName'
  Prelude.Text ->
  UpdateRelationalDatabase
newUpdateRelationalDatabase pRelationalDatabaseName_ =
  UpdateRelationalDatabase'
    { preferredBackupWindow =
        Prelude.Nothing,
      caCertificateIdentifier = Prelude.Nothing,
      disableBackupRetention = Prelude.Nothing,
      masterUserPassword = Prelude.Nothing,
      publiclyAccessible = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      enableBackupRetention = Prelude.Nothing,
      rotateMasterUserPassword = Prelude.Nothing,
      applyImmediately = Prelude.Nothing,
      relationalDatabaseName = pRelationalDatabaseName_
    }

-- | The daily time range during which automated backups are created for your
-- database if automated backups are enabled.
--
-- Constraints:
--
-- -   Must be in the @hh24:mi-hh24:mi@ format.
--
--     Example: @16:00-16:30@
--
-- -   Specified in Coordinated Universal Time (UTC).
--
-- -   Must not conflict with the preferred maintenance window.
--
-- -   Must be at least 30 minutes.
updateRelationalDatabase_preferredBackupWindow :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Text)
updateRelationalDatabase_preferredBackupWindow = Lens.lens (\UpdateRelationalDatabase' {preferredBackupWindow} -> preferredBackupWindow) (\s@UpdateRelationalDatabase' {} a -> s {preferredBackupWindow = a} :: UpdateRelationalDatabase)

-- | Indicates the certificate that needs to be associated with the database.
updateRelationalDatabase_caCertificateIdentifier :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Text)
updateRelationalDatabase_caCertificateIdentifier = Lens.lens (\UpdateRelationalDatabase' {caCertificateIdentifier} -> caCertificateIdentifier) (\s@UpdateRelationalDatabase' {} a -> s {caCertificateIdentifier = a} :: UpdateRelationalDatabase)

-- | When @true@, disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups.
-- Before disabling this, you may want to create a snapshot of your
-- database using the @create relational database snapshot@ operation.
--
-- Updates are applied during the next maintenance window because this can
-- result in an outage.
updateRelationalDatabase_disableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Bool)
updateRelationalDatabase_disableBackupRetention = Lens.lens (\UpdateRelationalDatabase' {disableBackupRetention} -> disableBackupRetention) (\s@UpdateRelationalDatabase' {} a -> s {disableBackupRetention = a} :: UpdateRelationalDatabase)

-- | The password for the master user of your database. The password can
-- include any printable ASCII character except \"\/\", \"\"\", or \"\@\".
--
-- Constraints: Must contain 8 to 41 characters.
updateRelationalDatabase_masterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Text)
updateRelationalDatabase_masterUserPassword = Lens.lens (\UpdateRelationalDatabase' {masterUserPassword} -> masterUserPassword) (\s@UpdateRelationalDatabase' {} a -> s {masterUserPassword = a} :: UpdateRelationalDatabase) Prelude.. Lens.mapping Prelude._Sensitive

-- | Specifies the accessibility options for your database. A value of @true@
-- specifies a database that is available to resources outside of your
-- Lightsail account. A value of @false@ specifies a database that is
-- available only to your Lightsail resources in the same region as your
-- database.
updateRelationalDatabase_publiclyAccessible :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Bool)
updateRelationalDatabase_publiclyAccessible = Lens.lens (\UpdateRelationalDatabase' {publiclyAccessible} -> publiclyAccessible) (\s@UpdateRelationalDatabase' {} a -> s {publiclyAccessible = a} :: UpdateRelationalDatabase)

-- | The weekly time range during which system maintenance can occur on your
-- database.
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each AWS Region, occurring on a random day of the
-- week.
--
-- Constraints:
--
-- -   Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
-- -   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
-- -   Must be at least 30 minutes.
--
-- -   Specified in Coordinated Universal Time (UTC).
--
-- -   Example: @Tue:17:00-Tue:17:30@
updateRelationalDatabase_preferredMaintenanceWindow :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Text)
updateRelationalDatabase_preferredMaintenanceWindow = Lens.lens (\UpdateRelationalDatabase' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@UpdateRelationalDatabase' {} a -> s {preferredMaintenanceWindow = a} :: UpdateRelationalDatabase)

-- | When @true@, enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can
-- result in an outage.
updateRelationalDatabase_enableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Bool)
updateRelationalDatabase_enableBackupRetention = Lens.lens (\UpdateRelationalDatabase' {enableBackupRetention} -> enableBackupRetention) (\s@UpdateRelationalDatabase' {} a -> s {enableBackupRetention = a} :: UpdateRelationalDatabase)

-- | When @true@, the master user password is changed to a new strong
-- password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get
-- the new password.
updateRelationalDatabase_rotateMasterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Bool)
updateRelationalDatabase_rotateMasterUserPassword = Lens.lens (\UpdateRelationalDatabase' {rotateMasterUserPassword} -> rotateMasterUserPassword) (\s@UpdateRelationalDatabase' {} a -> s {rotateMasterUserPassword = a} :: UpdateRelationalDatabase)

-- | When @true@, applies changes immediately. When @false@, applies changes
-- during the preferred maintenance window. Some changes may cause an
-- outage.
--
-- Default: @false@
updateRelationalDatabase_applyImmediately :: Lens.Lens' UpdateRelationalDatabase (Prelude.Maybe Prelude.Bool)
updateRelationalDatabase_applyImmediately = Lens.lens (\UpdateRelationalDatabase' {applyImmediately} -> applyImmediately) (\s@UpdateRelationalDatabase' {} a -> s {applyImmediately = a} :: UpdateRelationalDatabase)

-- | The name of your database to update.
updateRelationalDatabase_relationalDatabaseName :: Lens.Lens' UpdateRelationalDatabase Prelude.Text
updateRelationalDatabase_relationalDatabaseName = Lens.lens (\UpdateRelationalDatabase' {relationalDatabaseName} -> relationalDatabaseName) (\s@UpdateRelationalDatabase' {} a -> s {relationalDatabaseName = a} :: UpdateRelationalDatabase)

instance Prelude.AWSRequest UpdateRelationalDatabase where
  type
    Rs UpdateRelationalDatabase =
      UpdateRelationalDatabaseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRelationalDatabaseResponse'
            Prelude.<$> ( x Prelude..?> "operations"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateRelationalDatabase

instance Prelude.NFData UpdateRelationalDatabase

instance Prelude.ToHeaders UpdateRelationalDatabase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.UpdateRelationalDatabase" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateRelationalDatabase where
  toJSON UpdateRelationalDatabase' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("preferredBackupWindow" Prelude..=)
              Prelude.<$> preferredBackupWindow,
            ("caCertificateIdentifier" Prelude..=)
              Prelude.<$> caCertificateIdentifier,
            ("disableBackupRetention" Prelude..=)
              Prelude.<$> disableBackupRetention,
            ("masterUserPassword" Prelude..=)
              Prelude.<$> masterUserPassword,
            ("publiclyAccessible" Prelude..=)
              Prelude.<$> publiclyAccessible,
            ("preferredMaintenanceWindow" Prelude..=)
              Prelude.<$> preferredMaintenanceWindow,
            ("enableBackupRetention" Prelude..=)
              Prelude.<$> enableBackupRetention,
            ("rotateMasterUserPassword" Prelude..=)
              Prelude.<$> rotateMasterUserPassword,
            ("applyImmediately" Prelude..=)
              Prelude.<$> applyImmediately,
            Prelude.Just
              ( "relationalDatabaseName"
                  Prelude..= relationalDatabaseName
              )
          ]
      )

instance Prelude.ToPath UpdateRelationalDatabase where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateRelationalDatabase where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRelationalDatabaseResponse' smart constructor.
data UpdateRelationalDatabaseResponse = UpdateRelationalDatabaseResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Prelude.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateRelationalDatabaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'updateRelationalDatabaseResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'updateRelationalDatabaseResponse_httpStatus' - The response's http status code.
newUpdateRelationalDatabaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRelationalDatabaseResponse
newUpdateRelationalDatabaseResponse pHttpStatus_ =
  UpdateRelationalDatabaseResponse'
    { operations =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
updateRelationalDatabaseResponse_operations :: Lens.Lens' UpdateRelationalDatabaseResponse (Prelude.Maybe [Operation])
updateRelationalDatabaseResponse_operations = Lens.lens (\UpdateRelationalDatabaseResponse' {operations} -> operations) (\s@UpdateRelationalDatabaseResponse' {} a -> s {operations = a} :: UpdateRelationalDatabaseResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
updateRelationalDatabaseResponse_httpStatus :: Lens.Lens' UpdateRelationalDatabaseResponse Prelude.Int
updateRelationalDatabaseResponse_httpStatus = Lens.lens (\UpdateRelationalDatabaseResponse' {httpStatus} -> httpStatus) (\s@UpdateRelationalDatabaseResponse' {} a -> s {httpStatus = a} :: UpdateRelationalDatabaseResponse)

instance
  Prelude.NFData
    UpdateRelationalDatabaseResponse
