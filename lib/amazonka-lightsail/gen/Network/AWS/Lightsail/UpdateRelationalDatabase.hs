{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.UpdateRelationalDatabase
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the update of one or more attributes of a database in Amazon Lightsail.
--
-- Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window.
-- The @update relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.UpdateRelationalDatabase
    (
    -- * Creating a request
      UpdateRelationalDatabase (..)
    , mkUpdateRelationalDatabase
    -- ** Request lenses
    , urdRelationalDatabaseName
    , urdApplyImmediately
    , urdCaCertificateIdentifier
    , urdDisableBackupRetention
    , urdEnableBackupRetention
    , urdMasterUserPassword
    , urdPreferredBackupWindow
    , urdPreferredMaintenanceWindow
    , urdPubliclyAccessible
    , urdRotateMasterUserPassword

    -- * Destructuring the response
    , UpdateRelationalDatabaseResponse (..)
    , mkUpdateRelationalDatabaseResponse
    -- ** Response lenses
    , urdrrsOperations
    , urdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateRelationalDatabase' smart constructor.
data UpdateRelationalDatabase = UpdateRelationalDatabase'
  { relationalDatabaseName :: Types.ResourceName
    -- ^ The name of your database to update.
  , applyImmediately :: Core.Maybe Core.Bool
    -- ^ When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage.
--
-- Default: @false@ 
  , caCertificateIdentifier :: Core.Maybe Core.Text
    -- ^ Indicates the certificate that needs to be associated with the database.
  , disableBackupRetention :: Core.Maybe Core.Bool
    -- ^ When @true@ , disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation.
-- Updates are applied during the next maintenance window because this can result in an outage.
  , enableBackupRetention :: Core.Maybe Core.Bool
    -- ^ When @true@ , enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can result in an outage.
  , masterUserPassword :: Core.Maybe Types.MasterUserPassword
    -- ^ The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
--
-- Constraints: Must contain 8 to 41 characters.
  , preferredBackupWindow :: Core.Maybe Core.Text
    -- ^ The daily time range during which automated backups are created for your database if automated backups are enabled.
--
-- Constraints:
--
--     * Must be in the @hh24:mi-hh24:mi@ format.
-- Example: @16:00-16:30@ 
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Must not conflict with the preferred maintenance window.
--
--
--     * Must be at least 30 minutes.
--
--
  , preferredMaintenanceWindow :: Core.Maybe Core.Text
    -- ^ The weekly time range during which system maintenance can occur on your database.
--
-- The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
-- Constraints:
--
--     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
--
--     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
--
--     * Must be at least 30 minutes.
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Example: @Tue:17:00-Tue:17:30@ 
--
--
  , publiclyAccessible :: Core.Maybe Core.Bool
    -- ^ Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
  , rotateMasterUserPassword :: Core.Maybe Core.Bool
    -- ^ When @true@ , the master user password is changed to a new strong password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get the new password.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateRelationalDatabase' value with any optional fields omitted.
mkUpdateRelationalDatabase
    :: Types.ResourceName -- ^ 'relationalDatabaseName'
    -> UpdateRelationalDatabase
mkUpdateRelationalDatabase relationalDatabaseName
  = UpdateRelationalDatabase'{relationalDatabaseName,
                              applyImmediately = Core.Nothing,
                              caCertificateIdentifier = Core.Nothing,
                              disableBackupRetention = Core.Nothing,
                              enableBackupRetention = Core.Nothing,
                              masterUserPassword = Core.Nothing,
                              preferredBackupWindow = Core.Nothing,
                              preferredMaintenanceWindow = Core.Nothing,
                              publiclyAccessible = Core.Nothing,
                              rotateMasterUserPassword = Core.Nothing}

-- | The name of your database to update.
--
-- /Note:/ Consider using 'relationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdRelationalDatabaseName :: Lens.Lens' UpdateRelationalDatabase Types.ResourceName
urdRelationalDatabaseName = Lens.field @"relationalDatabaseName"
{-# INLINEABLE urdRelationalDatabaseName #-}
{-# DEPRECATED relationalDatabaseName "Use generic-lens or generic-optics with 'relationalDatabaseName' instead"  #-}

-- | When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage.
--
-- Default: @false@ 
--
-- /Note:/ Consider using 'applyImmediately' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdApplyImmediately :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Bool)
urdApplyImmediately = Lens.field @"applyImmediately"
{-# INLINEABLE urdApplyImmediately #-}
{-# DEPRECATED applyImmediately "Use generic-lens or generic-optics with 'applyImmediately' instead"  #-}

-- | Indicates the certificate that needs to be associated with the database.
--
-- /Note:/ Consider using 'caCertificateIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdCaCertificateIdentifier :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Text)
urdCaCertificateIdentifier = Lens.field @"caCertificateIdentifier"
{-# INLINEABLE urdCaCertificateIdentifier #-}
{-# DEPRECATED caCertificateIdentifier "Use generic-lens or generic-optics with 'caCertificateIdentifier' instead"  #-}

-- | When @true@ , disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation.
-- Updates are applied during the next maintenance window because this can result in an outage.
--
-- /Note:/ Consider using 'disableBackupRetention' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdDisableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Bool)
urdDisableBackupRetention = Lens.field @"disableBackupRetention"
{-# INLINEABLE urdDisableBackupRetention #-}
{-# DEPRECATED disableBackupRetention "Use generic-lens or generic-optics with 'disableBackupRetention' instead"  #-}

-- | When @true@ , enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can result in an outage.
--
-- /Note:/ Consider using 'enableBackupRetention' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdEnableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Bool)
urdEnableBackupRetention = Lens.field @"enableBackupRetention"
{-# INLINEABLE urdEnableBackupRetention #-}
{-# DEPRECATED enableBackupRetention "Use generic-lens or generic-optics with 'enableBackupRetention' instead"  #-}

-- | The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
--
-- Constraints: Must contain 8 to 41 characters.
--
-- /Note:/ Consider using 'masterUserPassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdMasterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Types.MasterUserPassword)
urdMasterUserPassword = Lens.field @"masterUserPassword"
{-# INLINEABLE urdMasterUserPassword #-}
{-# DEPRECATED masterUserPassword "Use generic-lens or generic-optics with 'masterUserPassword' instead"  #-}

-- | The daily time range during which automated backups are created for your database if automated backups are enabled.
--
-- Constraints:
--
--     * Must be in the @hh24:mi-hh24:mi@ format.
-- Example: @16:00-16:30@ 
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Must not conflict with the preferred maintenance window.
--
--
--     * Must be at least 30 minutes.
--
--
--
-- /Note:/ Consider using 'preferredBackupWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPreferredBackupWindow :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Text)
urdPreferredBackupWindow = Lens.field @"preferredBackupWindow"
{-# INLINEABLE urdPreferredBackupWindow #-}
{-# DEPRECATED preferredBackupWindow "Use generic-lens or generic-optics with 'preferredBackupWindow' instead"  #-}

-- | The weekly time range during which system maintenance can occur on your database.
--
-- The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
-- Constraints:
--
--     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
--
--     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
--
--     * Must be at least 30 minutes.
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Example: @Tue:17:00-Tue:17:30@ 
--
--
--
-- /Note:/ Consider using 'preferredMaintenanceWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPreferredMaintenanceWindow :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Text)
urdPreferredMaintenanceWindow = Lens.field @"preferredMaintenanceWindow"
{-# INLINEABLE urdPreferredMaintenanceWindow #-}
{-# DEPRECATED preferredMaintenanceWindow "Use generic-lens or generic-optics with 'preferredMaintenanceWindow' instead"  #-}

-- | Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
--
-- /Note:/ Consider using 'publiclyAccessible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPubliclyAccessible :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Bool)
urdPubliclyAccessible = Lens.field @"publiclyAccessible"
{-# INLINEABLE urdPubliclyAccessible #-}
{-# DEPRECATED publiclyAccessible "Use generic-lens or generic-optics with 'publiclyAccessible' instead"  #-}

-- | When @true@ , the master user password is changed to a new strong password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get the new password.
--
-- /Note:/ Consider using 'rotateMasterUserPassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdRotateMasterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Core.Maybe Core.Bool)
urdRotateMasterUserPassword = Lens.field @"rotateMasterUserPassword"
{-# INLINEABLE urdRotateMasterUserPassword #-}
{-# DEPRECATED rotateMasterUserPassword "Use generic-lens or generic-optics with 'rotateMasterUserPassword' instead"  #-}

instance Core.ToQuery UpdateRelationalDatabase where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateRelationalDatabase where
        toHeaders UpdateRelationalDatabase{..}
          = Core.pure
              ("X-Amz-Target", "Lightsail_20161128.UpdateRelationalDatabase")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateRelationalDatabase where
        toJSON UpdateRelationalDatabase{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("relationalDatabaseName" Core..= relationalDatabaseName),
                  ("applyImmediately" Core..=) Core.<$> applyImmediately,
                  ("caCertificateIdentifier" Core..=) Core.<$>
                    caCertificateIdentifier,
                  ("disableBackupRetention" Core..=) Core.<$> disableBackupRetention,
                  ("enableBackupRetention" Core..=) Core.<$> enableBackupRetention,
                  ("masterUserPassword" Core..=) Core.<$> masterUserPassword,
                  ("preferredBackupWindow" Core..=) Core.<$> preferredBackupWindow,
                  ("preferredMaintenanceWindow" Core..=) Core.<$>
                    preferredMaintenanceWindow,
                  ("publiclyAccessible" Core..=) Core.<$> publiclyAccessible,
                  ("rotateMasterUserPassword" Core..=) Core.<$>
                    rotateMasterUserPassword])

instance Core.AWSRequest UpdateRelationalDatabase where
        type Rs UpdateRelationalDatabase = UpdateRelationalDatabaseResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateRelationalDatabaseResponse' Core.<$>
                   (x Core..:? "operations") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateRelationalDatabaseResponse' smart constructor.
data UpdateRelationalDatabaseResponse = UpdateRelationalDatabaseResponse'
  { operations :: Core.Maybe [Types.Operation]
    -- ^ An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'UpdateRelationalDatabaseResponse' value with any optional fields omitted.
mkUpdateRelationalDatabaseResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateRelationalDatabaseResponse
mkUpdateRelationalDatabaseResponse responseStatus
  = UpdateRelationalDatabaseResponse'{operations = Core.Nothing,
                                      responseStatus}

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdrrsOperations :: Lens.Lens' UpdateRelationalDatabaseResponse (Core.Maybe [Types.Operation])
urdrrsOperations = Lens.field @"operations"
{-# INLINEABLE urdrrsOperations #-}
{-# DEPRECATED operations "Use generic-lens or generic-optics with 'operations' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdrrsResponseStatus :: Lens.Lens' UpdateRelationalDatabaseResponse Core.Int
urdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE urdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
